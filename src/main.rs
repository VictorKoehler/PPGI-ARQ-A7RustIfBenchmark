use rand::prelude::*;
use std::io;
use std::mem;
use std::time::Instant;

struct Triplet {
    a : f64,
    b : f64,
    c: f64
}

fn populate(buff : &mut Vec<Triplet>, n : usize, true_proportion : usize) -> i32 {
    let mut rng = thread_rng();
    let mut cc: i32 = 0;

    let mut is_a_greater_b = vec![false; n];
    for i in rand::seq::index::sample(&mut rng, n, true_proportion) {
        is_a_greater_b[i] = true;
    }

    for i in 0..n {
        let mut t = Triplet {a: rng.gen(), b: rng.gen(), c: 0.0};

        // let is_a_greater_b = cc != n || rng.gen::<f64>() < true_proportion; // true_proportion says the probability that a > b.
        if is_a_greater_b[i] == (t.a < t.b) { // is_a_greater_b determines if it will be a > b (true) or a <= b (false)
            mem::swap(&mut t.a, &mut t.b); // if first case (a must > b, (true)), BUT a < b (true), then swap them.
        } // However, in second case, (a must <= b, (false)), BUT a > b (that is, !(a < b), (false)), then swap them.

        if is_a_greater_b[i] { cc += 1; }
        buff.push(t);
    }
    return cc;
}

fn operate_sum(buff : &mut Vec<Triplet>, a : f64, b : f64, c : f64) {
    for t in buff {
        t.a += a;
        t.b += b;
        t.c += c;
    }
}

fn operate_multiply(buff : &mut Vec<Triplet>, a : f64, b : f64, c : f64) {
    for t in buff {
        t.a *= a;
        t.b *= b;
        t.c *= c;
    }
}

fn operate_print(buff : &Vec<Triplet>) {
    for t in buff {
        println!("{} {} {}", t.a, t.b, t.c);
    }
}

fn the_benchmark(buff : &mut Vec<Triplet>, rounds : i32) -> u128 {
    let start = Instant::now();
    for _ in 0..rounds {
        for t in &mut *buff {
            for _ in 0..5 {
                if t.a > t.b {
                    let mut p1 = t.a*5.0 - t.b*4.0 + t.a*t.c*2.0;
                    if t.a >= 0.0 { p1 += 2.0; }
                    if t.b >= 0.0 { p1 *= 1.5; }
                    if t.b*t.a >= 0.0 { p1 += 0.5; }
                    t.c += p1;
                } else {
                    let mut p1 = t.a*6.0 - t.b*5.1 + t.a*t.c*1.8;
                    if t.b >= 0.0 { p1 *= 1.1; }
                    if t.a >= 0.0 { p1 += 2.1; }
                    if t.b*t.a >= 0.0 { p1 += 0.6; }
                    t.c += p1;
                }
            }
        }
    }
    return start.elapsed().as_nanos();
}

fn main() {
    let mut buff: Vec<Triplet> = Vec::new();

    loop {
        let mut cmd = String::new();
        io::stdin().read_line(&mut cmd).expect("Failed to read line");
        let cmds: Vec<&str> = cmd.trim().split_whitespace().collect();

        if cmds.len() == 0 {
            break;
        }
        match cmds[0] {
            "pop" => {
                if cmds.len() != 3 { panic!("Invalid operations: {:?}", cmds); }
                let n: usize = cmds[1].parse().expect("Invalid number"); // format!("Invalid number {}", cmds[1]));
                let tprob: f64 = cmds[2].parse().expect("Invalid number"); // format!("Invalid number {}", cmds[2]));
                let t: usize = if tprob <= 1.0 { (tprob*(n as f64)) as usize } else { tprob as usize };
                println!("pop results: {}/{}", populate(&mut buff, n, t), n);
            },
            "sum" => {
                let v: Vec<f64> = cmds[1..4].iter().map(|&x| x.parse().expect("Invalid number")).collect();// format!("Invalid number {}", x)
                operate_sum(&mut buff, v[0], v[1], v[2]);
            },
            "multiply" => {
                let v: Vec<f64> = cmds[1..4].iter().map(|&x| x.parse().expect("Invalid number")).collect();// format!("Invalid number {}", x)
                operate_multiply(&mut buff, v[0], v[1], v[2]);
            },
            "print" => { operate_print(&buff); },
            "bench" => {
                let br = the_benchmark(&mut buff, cmds[1].parse().expect("Invalid number")).to_string();
                if br.len() > 9 {
                    println!("Benchmark results: {}.{}", br.chars().take(br.len()-9).collect::<String>(), br.chars().skip(br.len()-9).collect::<String>());
                } else {
                    println!("Benchmark results: {}", br);
                }
            },
            _ => { panic!("Invalid operation: '{}'", cmds[0]); }
        }
    }
}
