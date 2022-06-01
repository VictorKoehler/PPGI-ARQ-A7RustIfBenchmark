rust_if_bench::the_benchmark:
.Lfunc_begin1071:
		// ./src/main.rs : 57
		fn the_benchmark(buff : &mut Vec<Triplet>, rounds : i32) -> u128 {
	.cfi_startproc
	sub rsp, 216
	.cfi_def_cfa_offset 224
	mov qword ptr [rsp + 56], rdi
	mov dword ptr [rsp + 68], esi
	mov qword ptr [rsp + 192], rdi
	mov dword ptr [rsp + 204], esi
.Ltmp6235:
		// ./src/main.rs : 58
		let start = Instant::now();
	mov rax, qword ptr [rip + std::time::Instant::now@GOTPCREL]
	call rax
	mov qword ptr [rsp + 80], rdx
	mov qword ptr [rsp + 72], rax
	mov eax, dword ptr [rsp + 68]
.Ltmp6236:
		// ./src/main.rs : 59
		for _ in 0..rounds {
	mov dword ptr [rsp + 88], 0
	mov dword ptr [rsp + 92], eax
	mov edi, dword ptr [rsp + 88]
	mov esi, dword ptr [rsp + 92]
	call <I as core::iter::traits::collect::IntoIterator>::into_iter
	mov dword ptr [rsp + 48], eax
	mov dword ptr [rsp + 52], edx
	mov eax, dword ptr [rsp + 52]
	mov ecx, dword ptr [rsp + 48]
	mov dword ptr [rsp + 96], ecx
	mov dword ptr [rsp + 100], eax
.LBB1071_3:
	lea rdi, [rsp + 96]
.Ltmp6237:
	call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
	mov dword ptr [rsp + 108], edx
	mov dword ptr [rsp + 104], eax
	mov eax, dword ptr [rsp + 104]
	test rax, rax
	je .LBB1071_6
	jmp .LBB1071_34
.LBB1071_34:
	jmp .LBB1071_7
	.cfi_def_cfa_offset 8
	ud2
.Ltmp6238:
.LBB1071_6:
	.cfi_def_cfa_offset 224
		// ./src/main.rs : 78
		return start.elapsed().as_nanos();
	mov rax, qword ptr [rip + std::time::Instant::elapsed@GOTPCREL]
	lea rdi, [rsp + 72]
	call rax
	mov dword ptr [rsp + 184], edx
	mov qword ptr [rsp + 176], rax
	jmp .LBB1071_32
.LBB1071_7:
	mov rdi, qword ptr [rsp + 56]
.Ltmp6239:
		// ./src/main.rs : 60
		for t in &mut *buff {
	call <&mut alloc::vec::Vec<T,A> as core::iter::traits::collect::IntoIterator>::into_iter
	mov qword ptr [rsp + 32], rax
	mov qword ptr [rsp + 40], rdx
	mov rax, qword ptr [rsp + 40]
	mov rcx, qword ptr [rsp + 32]
	mov qword ptr [rsp + 112], rcx
	mov qword ptr [rsp + 120], rax
.LBB1071_9:
.Ltmp6240:
	lea rdi, [rsp + 112]
	call <core::slice::iter::IterMut<T> as core::iter::traits::iterator::Iterator>::next
	mov qword ptr [rsp + 128], rax
	mov rax, qword ptr [rsp + 128]
	test rax, rax
	setne al
	movzx eax, al
	je .LBB1071_3
	jmp .LBB1071_35
.LBB1071_35:
	jmp .LBB1071_12
	.cfi_def_cfa_offset 8
	ud2
.LBB1071_12:
	.cfi_def_cfa_offset 224
	mov rax, qword ptr [rsp + 128]
	mov qword ptr [rsp + 16], rax
	mov qword ptr [rsp + 208], rax
.Ltmp6241:
		// ./src/main.rs : 61
		for _ in 0..5 {
	mov dword ptr [rsp + 136], 0
	mov dword ptr [rsp + 140], 5
	mov edi, dword ptr [rsp + 136]
	mov esi, dword ptr [rsp + 140]
	call <I as core::iter::traits::collect::IntoIterator>::into_iter
	mov dword ptr [rsp + 24], eax
	mov dword ptr [rsp + 28], edx
	mov eax, dword ptr [rsp + 28]
	mov ecx, dword ptr [rsp + 24]
	mov dword ptr [rsp + 144], ecx
	mov dword ptr [rsp + 148], eax
.LBB1071_14:
	lea rdi, [rsp + 144]
.Ltmp6242:
	call core::iter::range::<impl core::iter::traits::iterator::Iterator for core::ops::range::Range<A>>::next
	mov dword ptr [rsp + 156], edx
	mov dword ptr [rsp + 152], eax
	mov eax, dword ptr [rsp + 152]
	test rax, rax
	je .LBB1071_9
	jmp .LBB1071_36
.LBB1071_36:
	jmp .LBB1071_17
	.cfi_def_cfa_offset 8
	ud2
.LBB1071_17:
	.cfi_def_cfa_offset 224
	mov rax, qword ptr [rsp + 16]
		// ./src/main.rs : 62
		if t.a > t.b {
	movsd xmm0, qword ptr [rax]
	ucomisd xmm0, qword ptr [rax + 8]
	ja .LBB1071_19
	mov rax, qword ptr [rsp + 16]
		// ./src/main.rs : 69
		let mut p1 = t.a*6.0 - t.b*5.1 + t.a*t.c*1.8;
	movsd xmm0, qword ptr [rip + .LCPI1071_2]
	mulsd xmm0, qword ptr [rax]
	movsd xmm1, qword ptr [rip + .LCPI1071_1]
	mulsd xmm1, qword ptr [rax + 8]
	subsd xmm0, xmm1
	movsd xmm1, qword ptr [rax]
	mulsd xmm1, qword ptr [rax + 16]
	movsd xmm2, qword ptr [rip + .LCPI1071_0]
	mulsd xmm1, xmm2
	addsd xmm0, xmm1
	movsd qword ptr [rsp + 168], xmm0
.Ltmp6243:
		// ./src/main.rs : 70
		if t.b >= 0.0 { p1 *= 1.1; }
	movsd xmm0, qword ptr [rax + 8]
	xorps xmm1, xmm1
	ucomisd xmm0, xmm1
	jae .LBB1071_27
	jmp .LBB1071_26
.Ltmp6244:
.LBB1071_19:
	mov rax, qword ptr [rsp + 16]
		// ./src/main.rs : 63
		let mut p1 = t.a*5.0 - t.b*4.0 + t.a*t.c*2.0;
	movsd xmm0, qword ptr [rip + .LCPI1071_8]
	mulsd xmm0, qword ptr [rax]
	movsd xmm1, qword ptr [rip + .LCPI1071_7]
	mulsd xmm1, qword ptr [rax + 8]
	subsd xmm0, xmm1
	movsd xmm1, qword ptr [rax]
	mulsd xmm1, qword ptr [rax + 16]
	movsd xmm2, qword ptr [rip + .LCPI1071_6]
	mulsd xmm1, xmm2
	addsd xmm0, xmm1
	movsd qword ptr [rsp + 160], xmm0
.Ltmp6245:
		// ./src/main.rs : 64
		if t.a >= 0.0 { p1 += 2.0; }
	movsd xmm0, qword ptr [rax]
	xorps xmm1, xmm1
	ucomisd xmm0, xmm1
	jae .LBB1071_21
.LBB1071_20:
	mov rax, qword ptr [rsp + 16]
		// ./src/main.rs : 65
		if t.b >= 0.0 { p1 *= 1.5; }
	movsd xmm0, qword ptr [rax + 8]
	xorps xmm1, xmm1
	ucomisd xmm0, xmm1
	jae .LBB1071_23
	jmp .LBB1071_22
.LBB1071_21:
		// ./src/main.rs : 64
		if t.a >= 0.0 { p1 += 2.0; }
	movsd xmm0, qword ptr [rip + .LCPI1071_6]
	addsd xmm0, qword ptr [rsp + 160]
	movsd qword ptr [rsp + 160], xmm0
	jmp .LBB1071_20
.LBB1071_22:
	mov rax, qword ptr [rsp + 16]
		// ./src/main.rs : 66
		if t.b*t.a >= 0.0 { p1 += 0.5; }
	movsd xmm0, qword ptr [rax + 8]
	mulsd xmm0, qword ptr [rax]
	xorps xmm1, xmm1
	ucomisd xmm0, xmm1
	jae .LBB1071_25
	jmp .LBB1071_24
.LBB1071_23:
		// ./src/main.rs : 65
		if t.b >= 0.0 { p1 *= 1.5; }
	movsd xmm0, qword ptr [rip + .LCPI1071_9]
	mulsd xmm0, qword ptr [rsp + 160]
	movsd qword ptr [rsp + 160], xmm0
	jmp .LBB1071_22
.LBB1071_24:
	mov rax, qword ptr [rsp + 16]
		// ./src/main.rs : 67
		t.c += p1;
	movsd xmm0, qword ptr [rsp + 160]
	addsd xmm0, qword ptr [rax + 16]
	movsd qword ptr [rax + 16], xmm0
.Ltmp6246:
		// ./src/main.rs : 62
		if t.a > t.b {
	jmp .LBB1071_14
.LBB1071_25:
.Ltmp6247:
		// ./src/main.rs : 66
		if t.b*t.a >= 0.0 { p1 += 0.5; }
	movsd xmm0, qword ptr [rip + .LCPI1071_10]
	addsd xmm0, qword ptr [rsp + 160]
	movsd qword ptr [rsp + 160], xmm0
	jmp .LBB1071_24
.Ltmp6248:
.LBB1071_26:
	mov rax, qword ptr [rsp + 16]
.Ltmp6249:
		// ./src/main.rs : 71
		if t.a >= 0.0 { p1 += 2.1; }
	movsd xmm0, qword ptr [rax]
	xorps xmm1, xmm1
	ucomisd xmm0, xmm1
	jae .LBB1071_29
	jmp .LBB1071_28
.LBB1071_27:
		// ./src/main.rs : 70
		if t.b >= 0.0 { p1 *= 1.1; }
	movsd xmm0, qword ptr [rip + .LCPI1071_3]
	mulsd xmm0, qword ptr [rsp + 168]
	movsd qword ptr [rsp + 168], xmm0
	jmp .LBB1071_26
.LBB1071_28:
	mov rax, qword ptr [rsp + 16]
		// ./src/main.rs : 72
		if t.b*t.a >= 0.0 { p1 += 0.6; }
	movsd xmm0, qword ptr [rax + 8]
	mulsd xmm0, qword ptr [rax]
	xorps xmm1, xmm1
	ucomisd xmm0, xmm1
	jae .LBB1071_31
	jmp .LBB1071_30
.LBB1071_29:
		// ./src/main.rs : 71
		if t.a >= 0.0 { p1 += 2.1; }
	movsd xmm0, qword ptr [rip + .LCPI1071_4]
	addsd xmm0, qword ptr [rsp + 168]
	movsd qword ptr [rsp + 168], xmm0
	jmp .LBB1071_28
.LBB1071_30:
	mov rax, qword ptr [rsp + 16]
		// ./src/main.rs : 73
		t.c += p1;
	movsd xmm0, qword ptr [rsp + 168]
	addsd xmm0, qword ptr [rax + 16]
	movsd qword ptr [rax + 16], xmm0
.Ltmp6250:
		// ./src/main.rs : 62
		if t.a > t.b {
	jmp .LBB1071_14
.LBB1071_31:
.Ltmp6251:
		// ./src/main.rs : 72
		if t.b*t.a >= 0.0 { p1 += 0.6; }
	movsd xmm0, qword ptr [rip + .LCPI1071_5]
	addsd xmm0, qword ptr [rsp + 168]
	movsd qword ptr [rsp + 168], xmm0
	jmp .LBB1071_30
.Ltmp6252:
.LBB1071_32:
		// ./src/main.rs : 78
		return start.elapsed().as_nanos();
	lea rdi, [rsp + 176]
	call core::time::Duration::as_nanos
	mov qword ptr [rsp], rax
	mov qword ptr [rsp + 8], rdx
.Ltmp6253:
	mov rdx, qword ptr [rsp + 8]
	mov rax, qword ptr [rsp]
		// ./src/main.rs : 79
		}
	add rsp, 216
	.cfi_def_cfa_offset 8
	ret
.Ltmp6254:
.Lfunc_end1071:
	.size	rust_if_bench::the_benchmark, .Lfunc_end1071-rust_if_bench::the_benchmark
	.cfi_endproc
