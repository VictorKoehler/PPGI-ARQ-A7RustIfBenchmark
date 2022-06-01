rust_if_bench::main:
.Lfunc_begin49:
		// ./src/main.rs : 81
		fn main() {
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception3
	push rbp
	.cfi_def_cfa_offset 16
	push r15
	.cfi_def_cfa_offset 24
	push r14
	.cfi_def_cfa_offset 32
	push r13
	.cfi_def_cfa_offset 40
	push r12
	.cfi_def_cfa_offset 48
	push rbx
	.cfi_def_cfa_offset 56
	sub rsp, 344
	.cfi_def_cfa_offset 400
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/vec/mod.rs : 425
		Vec { buf: RawVec::NEW, len: 0 }
	mov qword ptr [rsp + 248], 8
	xorpd xmm0, xmm0
	movupd xmmword ptr [rsp + 256], xmm0
	lea rbx, [rsp + 320]
	mov rbp, qword ptr [rip + std::io::stdio::stdin@GOTPCREL]
	lea r12, [rsp + 16]
	lea r13, [rsp + 120]
.Ltmp1913:
.LBB49_1:
	movupd xmmword ptr [rbx], xmm0
.Ltmp1914:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/string.rs : 383
		String { vec: Vec::new() }
	mov qword ptr [rsp + 312], 1
.Ltmp1915:
.Ltmp1623:
		// ./src/main.rs : 86
		io::stdin().read_line(&mut cmd).expect("Failed to read line");
	call rbp
.Ltmp1624:
	mov qword ptr [rsp + 120], rax
.Ltmp1625:
	mov rdi, r12
	mov rsi, r13
	lea rdx, [rsp + 312]
	call qword ptr [rip + std::io::stdio::Stdin::read_line@GOTPCREL]
.Ltmp1626:
.Ltmp1916:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/result.rs : 1033
		match self {
	cmp qword ptr [rsp + 16], 0
.Ltmp1917:
	jne .LBB49_573
.Ltmp1918:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/string.rs : 2329
		unsafe { str::from_utf8_unchecked(&self.vec) }
	mov r15, qword ptr [rsp + 312]
	mov rax, qword ptr [rsp + 328]
.Ltmp1919:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/ptr/const_ptr.rs : 412
		unsafe { intrinsics::offset(self, count) }
	lea r12, [r15 + rax]
.Ltmp1920:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/slice/iter/macros.rs : 146
		if is_empty!(self) {
	test rax, rax
	mov qword ptr [rsp + 96], r15
.Ltmp1921:
	je .LBB49_21
.Ltmp1922:
	xor ebx, ebx
	mov rbp, r15
	jmp .LBB49_7
.Ltmp1923:
	.p2align	4, 0x90
.LBB49_6:
	cmp rbp, r12
	je .LBB49_20
.Ltmp1924:
.LBB49_7:
	mov rax, rbp
	mov r14, rbx
.Ltmp1925:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 38
		let x = *bytes.next()?;
	movzx edi, byte ptr [rbp]
.Ltmp1926:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 39
		if x < 128 {
	test dil, dil
	js .LBB49_9
.Ltmp1927:
	lea rbp, [rax + 1]
.Ltmp1928:
	jmp .LBB49_14
.Ltmp1929:
	.p2align	4, 0x90
.LBB49_9:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 12
		(byte & (0x7F >> width)) as u32
	mov ecx, edi
	and ecx, 31
.Ltmp1930:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 18
		(ch << 6) | (byte & CONT_MASK) as u32
	movzx esi, byte ptr [rax + 1]
.Ltmp1931:
	and esi, 63
.Ltmp1932:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 51
		if x >= 0xE0 {
	cmp dil, -33
	jbe .LBB49_12
.Ltmp1933:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 18
		(ch << 6) | (byte & CONT_MASK) as u32
	movzx edx, byte ptr [rax + 2]
.Ltmp1934:
	shl esi, 6
.Ltmp1935:
	and edx, 63
	or edx, esi
.Ltmp1936:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 59
		if x >= 0xF0 {
	cmp dil, -16
	jb .LBB49_13
.Ltmp1937:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/ptr/mut_ptr.rs : 424
		unsafe { intrinsics::offset(self, count) as *mut T }
	lea rbp, [rax + 4]
.Ltmp1938:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 18
		(ch << 6) | (byte & CONT_MASK) as u32
	movzx edi, byte ptr [rax + 3]
.Ltmp1939:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 65
		ch = (init & 7) << 18 | utf8_acc_cont_byte(y_z, w);
	and ecx, 7
.Ltmp1940:
	shl ecx, 18
.Ltmp1941:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 18
		(ch << 6) | (byte & CONT_MASK) as u32
	shl edx, 6
.Ltmp1942:
	and edi, 63
	or edi, edx
.Ltmp1943:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 65
		ch = (init & 7) << 18 | utf8_acc_cont_byte(y_z, w);
	or edi, ecx
.Ltmp1944:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/iter.rs : 140
		match self.iter.next() {
	cmp edi, 1114112
	jne .LBB49_14
	jmp .LBB49_241
.Ltmp1945:
.LBB49_12:
	lea rbp, [rax + 2]
.Ltmp1946:
	shl ecx, 6
	or ecx, esi
	mov edi, ecx
	jmp .LBB49_14
.Ltmp1947:
.LBB49_13:
	lea rbp, [rax + 3]
.Ltmp1948:
	shl ecx, 12
	or edx, ecx
	mov edi, edx
.Ltmp1949:
	.p2align	4, 0x90
.LBB49_14:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/iter.rs : 145
		self.front_offset += pre_len - len;
	mov rbx, rbp
.Ltmp1950:
	sub rbx, rax
	add rbx, r14
.Ltmp1951:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/char/methods.rs : 816
		match self {
	lea eax, [rdi - 9]
	cmp eax, 5
	jb .LBB49_6
.Ltmp1952:
	cmp edi, 32
	je .LBB49_6
.Ltmp1953:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/char/methods.rs : 818
		c => c > '\x7f' && unicode::White_Space(c),
	cmp edi, 128
	jb .LBB49_19
.Ltmp1954:
.Ltmp1634:
	call qword ptr [rip + core::unicode::unicode_data::white_space::lookup@GOTPCREL]
.Ltmp1955:
.Ltmp1635:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/pattern.rs : 665
		if self.char_eq.matches(c) {
	test al, al
	jne .LBB49_6
.Ltmp1956:
.LBB49_19:
	mov r13, rbx
	mov r15, rbx
.Ltmp1957:
	jmp .LBB49_23
.Ltmp1958:
	.p2align	4, 0x90
.LBB49_20:
	xor r14d, r14d
	xor r13d, r13d
	jmp .LBB49_40
.Ltmp1959:
	.p2align	4, 0x90
.LBB49_21:
	xor r13d, r13d
	mov rbp, r15
.Ltmp1960:
	xor r15d, r15d
.Ltmp1961:
.LBB49_22:
	xor r14d, r14d
.Ltmp1962:
	.p2align	4, 0x90
.LBB49_23:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/slice/iter/macros.rs : 361
		if is_empty!(self) {
	cmp rbp, r12
	je .LBB49_39
.Ltmp1963:
	mov rbx, r12
.Ltmp1964:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 85
		next_byte if next_byte < 128 => return Some(next_byte as u32),
	movzx edi, byte ptr [r12 - 1]
	test dil, dil
	js .LBB49_26
.Ltmp1965:
	lea r12, [rbx - 1]
.Ltmp1966:
	jmp .LBB49_33
.Ltmp1967:
	.p2align	4, 0x90
.LBB49_26:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 94
		let z = unsafe { *bytes.next_back().unwrap_unchecked() };
	movzx eax, byte ptr [rbx - 2]
.Ltmp1968:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 25
		(byte as i8) < -64
	cmp al, -64
.Ltmp1969:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 96
		if utf8_is_cont_byte(z) {
	jge .LBB49_29
.Ltmp1970:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 99
		let y = unsafe { *bytes.next_back().unwrap_unchecked() };
	movzx ecx, byte ptr [rbx - 3]
.Ltmp1971:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 25
		(byte as i8) < -64
	cmp cl, -64
.Ltmp1972:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 101
		if utf8_is_cont_byte(y) {
	jge .LBB49_30
.Ltmp1973:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/ptr/const_ptr.rs : 412
		unsafe { intrinsics::offset(self, count) }
	lea r12, [rbx - 4]
.Ltmp1974:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 12
		(byte & (0x7F >> width)) as u32
	movzx edx, byte ptr [rbx - 4]
.Ltmp1975:
	and edx, 7
.Ltmp1976:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 18
		(ch << 6) | (byte & CONT_MASK) as u32
	shl edx, 6
.Ltmp1977:
	and ecx, 63
.Ltmp1978:
	or ecx, edx
.Ltmp1979:
	jmp .LBB49_31
.Ltmp1980:
.LBB49_29:
	lea r12, [rbx - 2]
.Ltmp1981:
	and eax, 31
.Ltmp1982:
	jmp .LBB49_32
.Ltmp1983:
.LBB49_30:
	lea r12, [rbx - 3]
.Ltmp1984:
	and ecx, 15
.Ltmp1985:
.LBB49_31:
	shl ecx, 6
.Ltmp1986:
	and eax, 63
.Ltmp1987:
	or eax, ecx
.Ltmp1988:
.LBB49_32:
	shl eax, 6
.Ltmp1989:
	and edi, 63
	or edi, eax
.Ltmp1990:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/pattern.rs : 682
		if let Some((i, c)) = s.next_back() {
	cmp edi, 1114112
	je .LBB49_39
.Ltmp1991:
.LBB49_33:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/char/methods.rs : 816
		match self {
	lea eax, [rdi - 9]
	cmp eax, 5
	jb .LBB49_23
.Ltmp1992:
	cmp edi, 32
	je .LBB49_23
.Ltmp1993:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/char/methods.rs : 818
		c => c > '\x7f' && unicode::White_Space(c),
	cmp edi, 128
	jb .LBB49_38
.Ltmp1994:
.Ltmp1637:
	call qword ptr [rip + core::unicode::unicode_data::white_space::lookup@GOTPCREL]
.Ltmp1995:
.Ltmp1638:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/pattern.rs : 685
		if self.char_eq.matches(c) {
	test al, al
	jne .LBB49_23
.Ltmp1996:
.LBB49_38:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/pattern.rs : 684
		let char_len = pre_len - len;
	sub r15, rbp
.Ltmp1997:
	add r15, rbx
	mov r13, r15
.Ltmp1998:
	.p2align	4, 0x90
.LBB49_39:
	mov r15, qword ptr [rsp + 96]
.Ltmp1999:
.LBB49_40:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/ptr/const_ptr.rs : 412
		unsafe { intrinsics::offset(self, count) }
	lea r12, [r15 + r14]
.Ltmp2000:
	lea rax, [r15 + r13]
.Ltmp2001:
	mov qword ptr [rsp], rax
.Ltmp2002:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/traits.rs : 202
		let len = self.end - self.start;
	sub r13, r14
.Ltmp2003:
	mov qword ptr [rsp + 8], r13
	xor ebp, ebp
	mov qword ptr [rsp + 216], r12
.Ltmp2004:
	xor ebx, ebx
	xor eax, eax
	mov qword ptr [rsp + 80], rax
	xor r13d, r13d
	jmp .LBB49_42
.Ltmp2005:
	.p2align	4, 0x90
.LBB49_41:
	xor r13d, r13d
	mov r12, rbx
	mov rbx, rbp
.Ltmp2006:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/mod.rs : 180
		self.len() == 0
	sub r14, r15
.Ltmp2007:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/iter/traits/iterator.rs : 2186
		accum = f(accum, x)?;
	jne .LBB49_61
.Ltmp2008:
.LBB49_42:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/iter.rs : 603
		if self.finished {
	test r13b, r13b
	jne .LBB49_553
.Ltmp2009:
	mov r15, rbx
.Ltmp2010:
	mov r13b, 1
	mov rax, qword ptr [rsp]
.Ltmp2011:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/slice/iter/macros.rs : 146
		if is_empty!(self) {
	cmp r12, rax
	je .LBB49_58
.Ltmp2012:
	mov r14, rbp
.Ltmp2013:
	jmp .LBB49_46
.Ltmp2014:
	.p2align	4, 0x90
.LBB49_45:
	mov r14, rbp
	mov r12, rbx
	mov rax, qword ptr [rsp]
.Ltmp2015:
	cmp rbx, rax
.Ltmp2016:
	je .LBB49_58
.Ltmp2017:
.LBB49_46:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 38
		let x = *bytes.next()?;
	movzx edi, byte ptr [r12]
.Ltmp2018:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 39
		if x < 128 {
	test dil, dil
	js .LBB49_48
.Ltmp2019:
	lea rbx, [r12 + 1]
.Ltmp2020:
	jmp .LBB49_53
.Ltmp2021:
	.p2align	4, 0x90
.LBB49_48:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 12
		(byte & (0x7F >> width)) as u32
	mov eax, edi
.Ltmp2022:
	and eax, 31
.Ltmp2023:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 18
		(ch << 6) | (byte & CONT_MASK) as u32
	movzx edx, byte ptr [r12 + 1]
.Ltmp2024:
	and edx, 63
.Ltmp2025:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 51
		if x >= 0xE0 {
	cmp dil, -33
	jbe .LBB49_51
.Ltmp2026:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 18
		(ch << 6) | (byte & CONT_MASK) as u32
	movzx ecx, byte ptr [r12 + 2]
.Ltmp2027:
	shl edx, 6
.Ltmp2028:
	and ecx, 63
	or ecx, edx
.Ltmp2029:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 59
		if x >= 0xF0 {
	cmp dil, -16
	jb .LBB49_52
.Ltmp2030:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/ptr/mut_ptr.rs : 424
		unsafe { intrinsics::offset(self, count) as *mut T }
	lea rbx, [r12 + 4]
.Ltmp2031:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 18
		(ch << 6) | (byte & CONT_MASK) as u32
	movzx edi, byte ptr [r12 + 3]
.Ltmp2032:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 65
		ch = (init & 7) << 18 | utf8_acc_cont_byte(y_z, w);
	and eax, 7
.Ltmp2033:
	shl eax, 18
.Ltmp2034:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 18
		(ch << 6) | (byte & CONT_MASK) as u32
	shl ecx, 6
.Ltmp2035:
	and edi, 63
	or edi, ecx
.Ltmp2036:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 65
		ch = (init & 7) << 18 | utf8_acc_cont_byte(y_z, w);
	or edi, eax
.Ltmp2037:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/iter.rs : 140
		match self.iter.next() {
	cmp edi, 1114112
	jne .LBB49_53
	jmp .LBB49_60
.Ltmp2038:
.LBB49_51:
	lea rbx, [r12 + 2]
.Ltmp2039:
	shl eax, 6
	or eax, edx
	mov edi, eax
	jmp .LBB49_53
.Ltmp2040:
.LBB49_52:
	lea rbx, [r12 + 3]
.Ltmp2041:
	shl eax, 12
	or ecx, eax
	mov edi, ecx
.Ltmp2042:
	.p2align	4, 0x90
.LBB49_53:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/iter.rs : 145
		self.front_offset += pre_len - len;
	mov rbp, rbx
	sub rbp, r12
	add rbp, r14
.Ltmp2043:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/char/methods.rs : 816
		match self {
	cmp edi, 32
	ja .LBB49_55
.Ltmp2044:
	mov eax, edi
	movabs rcx, 4294983168
	bt rcx, rax
	jb .LBB49_41
.Ltmp2045:
.LBB49_55:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/char/methods.rs : 818
		c => c > '\x7f' && unicode::White_Space(c),
	cmp edi, 128
	jb .LBB49_45
.Ltmp2046:
.Ltmp1640:
	call qword ptr [rip + core::unicode::unicode_data::white_space::lookup@GOTPCREL]
.Ltmp2047:
.Ltmp1641:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/pattern.rs : 665
		if self.char_eq.matches(c) {
	test al, al
	je .LBB49_45
	jmp .LBB49_41
.Ltmp2048:
	.p2align	4, 0x90
.LBB49_58:
	mov r12, rax
.Ltmp2049:
.LBB49_59:
	mov rbx, r15
	mov al, 1
	mov qword ptr [rsp + 80], rax
	mov r14, qword ptr [rsp + 8]
.Ltmp2050:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/mod.rs : 180
		self.len() == 0
	sub r14, r15
.Ltmp2051:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/iter/traits/iterator.rs : 2186
		accum = f(accum, x)?;
	je .LBB49_42
	jmp .LBB49_61
.Ltmp2052:
.LBB49_60:
	mov rbp, r14
.Ltmp2053:
	mov r12, rbx
.Ltmp2054:
	jmp .LBB49_59
.Ltmp2055:
	.p2align	4, 0x90
.LBB49_61:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/vec/spec_from_iter_nested.rs : 26
		let mut vector = match iterator.next() {
	cmp qword ptr [rsp + 96], 0
	je .LBB49_553
.Ltmp2056:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/alloc.rs : 89
		unsafe { __rust_alloc(layout.size(), layout.align()) }
	mov edi, 64
	mov esi, 8
	call qword ptr [rip + __rust_alloc@GOTPCREL]
.Ltmp2057:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/raw_vec.rs : 188
		let ptr = match result {
	test rax, rax
	je .LBB49_575
.Ltmp2058:
	add r15, qword ptr [rsp + 216]
.Ltmp2059:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/ptr/mod.rs : 1177
		copy_nonoverlapping(&src as *const T, dst, 1);
	mov qword ptr [rax], r15
	mov qword ptr [rax + 8], r14
.Ltmp2060:
	mov qword ptr [rsp + 96], rax
.Ltmp2061:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/vec/spec_from_iter_nested.rs : 38
		vector
	mov qword ptr [rsp + 16], rax
	movapd xmm0, xmmword ptr [rip + .LCPI49_0]
	movupd xmmword ptr [rsp + 24], xmm0
	mov rax, qword ptr [rsp + 80]
	mov r13d, eax
	jmp .LBB49_65
.Ltmp2062:
	.p2align	4, 0x90
.LBB49_64:
	xor r13d, r13d
	mov r12, rbx
	mov rbx, rbp
.Ltmp2063:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/mod.rs : 180
		self.len() == 0
	sub r14, r15
.Ltmp2064:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/iter/traits/iterator.rs : 2186
		accum = f(accum, x)?;
	jne .LBB49_84
.Ltmp2065:
.LBB49_65:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/iter.rs : 603
		if self.finished {
	test r13b, r13b
	jne .LBB49_109
.Ltmp2066:
	mov r15, rbx
.Ltmp2067:
	mov r13b, 1
	mov rax, qword ptr [rsp]
.Ltmp2068:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/slice/iter/macros.rs : 146
		if is_empty!(self) {
	cmp r12, rax
	je .LBB49_81
.Ltmp2069:
	mov r14, rbp
.Ltmp2070:
	jmp .LBB49_69
.Ltmp2071:
	.p2align	4, 0x90
.LBB49_68:
	mov r14, rbp
	mov r12, rbx
	mov rax, qword ptr [rsp]
.Ltmp2072:
	cmp rbx, rax
.Ltmp2073:
	je .LBB49_81
.Ltmp2074:
.LBB49_69:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 38
		let x = *bytes.next()?;
	movzx edi, byte ptr [r12]
.Ltmp2075:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 39
		if x < 128 {
	test dil, dil
	js .LBB49_71
.Ltmp2076:
	lea rbx, [r12 + 1]
.Ltmp2077:
	jmp .LBB49_76
.Ltmp2078:
	.p2align	4, 0x90
.LBB49_71:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 12
		(byte & (0x7F >> width)) as u32
	mov eax, edi
.Ltmp2079:
	and eax, 31
.Ltmp2080:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 18
		(ch << 6) | (byte & CONT_MASK) as u32
	movzx edx, byte ptr [r12 + 1]
.Ltmp2081:
	and edx, 63
.Ltmp2082:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 51
		if x >= 0xE0 {
	cmp dil, -33
	jbe .LBB49_74
.Ltmp2083:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 18
		(ch << 6) | (byte & CONT_MASK) as u32
	movzx ecx, byte ptr [r12 + 2]
.Ltmp2084:
	shl edx, 6
.Ltmp2085:
	and ecx, 63
	or ecx, edx
.Ltmp2086:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 59
		if x >= 0xF0 {
	cmp dil, -16
	jb .LBB49_75
.Ltmp2087:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/ptr/mut_ptr.rs : 424
		unsafe { intrinsics::offset(self, count) as *mut T }
	lea rbx, [r12 + 4]
.Ltmp2088:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 18
		(ch << 6) | (byte & CONT_MASK) as u32
	movzx edi, byte ptr [r12 + 3]
.Ltmp2089:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 65
		ch = (init & 7) << 18 | utf8_acc_cont_byte(y_z, w);
	and eax, 7
.Ltmp2090:
	shl eax, 18
.Ltmp2091:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 18
		(ch << 6) | (byte & CONT_MASK) as u32
	shl ecx, 6
.Ltmp2092:
	and edi, 63
	or edi, ecx
.Ltmp2093:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 65
		ch = (init & 7) << 18 | utf8_acc_cont_byte(y_z, w);
	or edi, eax
.Ltmp2094:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/iter.rs : 140
		match self.iter.next() {
	cmp edi, 1114112
	jne .LBB49_76
	jmp .LBB49_83
.Ltmp2095:
.LBB49_74:
	lea rbx, [r12 + 2]
.Ltmp2096:
	shl eax, 6
	or eax, edx
	mov edi, eax
	jmp .LBB49_76
.Ltmp2097:
.LBB49_75:
	lea rbx, [r12 + 3]
.Ltmp2098:
	shl eax, 12
	or ecx, eax
	mov edi, ecx
.Ltmp2099:
	.p2align	4, 0x90
.LBB49_76:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/iter.rs : 145
		self.front_offset += pre_len - len;
	mov rbp, rbx
	sub rbp, r12
	add rbp, r14
.Ltmp2100:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/char/methods.rs : 816
		match self {
	cmp edi, 32
	ja .LBB49_78
.Ltmp2101:
	mov eax, edi
	movabs rcx, 4294983168
	bt rcx, rax
	jb .LBB49_64
.Ltmp2102:
.LBB49_78:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/char/methods.rs : 818
		c => c > '\x7f' && unicode::White_Space(c),
	cmp edi, 128
	jb .LBB49_68
.Ltmp2103:
.Ltmp1643:
	call qword ptr [rip + core::unicode::unicode_data::white_space::lookup@GOTPCREL]
.Ltmp2104:
.Ltmp1644:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/pattern.rs : 665
		if self.char_eq.matches(c) {
	test al, al
	je .LBB49_68
	jmp .LBB49_64
.Ltmp2105:
	.p2align	4, 0x90
.LBB49_81:
	mov r12, rax
.Ltmp2106:
.LBB49_82:
	mov al, 1
	mov qword ptr [rsp + 80], rax
.Ltmp2107:
	mov rbx, r15
	mov r14, qword ptr [rsp + 8]
.Ltmp2108:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/mod.rs : 180
		self.len() == 0
	sub r14, r15
.Ltmp2109:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/iter/traits/iterator.rs : 2186
		accum = f(accum, x)?;
	je .LBB49_65
	jmp .LBB49_84
.Ltmp2110:
.LBB49_83:
	mov rbp, r14
.Ltmp2111:
	mov r12, rbx
.Ltmp2112:
	jmp .LBB49_82
.Ltmp2113:
.LBB49_84:
	mov r13d, 1
	mov esi, 4
.Ltmp2114:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/vec/mod.rs : 2653
		if len == self.capacity() {
	cmp rsi, r13
	mov rcx, qword ptr [rsp + 96]
	jne .LBB49_87
.Ltmp2115:
.LBB49_85:
.Ltmp1646:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/raw_vec.rs : 289
		do_reserve_and_handle(self, len, additional);
	mov edx, 1
	lea rdi, [rsp + 16]
	call alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
.Ltmp2116:
.Ltmp1647:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/vec/mod.rs : 1174
		let ptr = self.buf.ptr();
	mov rcx, qword ptr [rsp + 16]
.Ltmp2117:
.LBB49_87:
	add r15, qword ptr [rsp + 216]
.Ltmp2118:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/ptr/mut_ptr.rs : 424
		unsafe { intrinsics::offset(self, count) as *mut T }
	mov rax, r13
	shl rax, 4
.Ltmp2119:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/ptr/mod.rs : 1177
		copy_nonoverlapping(&src as *const T, dst, 1);
	mov qword ptr [rcx + rax], r15
	mov qword ptr [rsp + 96], rcx
.Ltmp2120:
	mov qword ptr [rcx + rax + 8], r14
.Ltmp2121:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/vec/mod.rs : 2662
		self.set_len(len + 1);
	add r13, 1
.Ltmp2122:
	mov qword ptr [rsp + 112], r13
.Ltmp2123:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/vec/mod.rs : 1271
		self.len = new_len;
	mov qword ptr [rsp + 32], r13
	mov rax, qword ptr [rsp + 80]
.Ltmp2124:
	mov r13d, eax
	jmp .LBB49_89
.Ltmp2125:
	.p2align	4, 0x90
.LBB49_88:
	xor r13d, r13d
	mov r12, rbx
.Ltmp2126:
	mov rbx, rbp
.Ltmp2127:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/mod.rs : 180
		self.len() == 0
	sub r14, r15
.Ltmp2128:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/iter/traits/iterator.rs : 2186
		accum = f(accum, x)?;
	jne .LBB49_108
.Ltmp2129:
.LBB49_89:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/iter.rs : 603
		if self.finished {
	test r13b, r13b
	jne .LBB49_109
.Ltmp2130:
	mov r15, rbx
.Ltmp2131:
	mov r13b, 1
	mov rax, qword ptr [rsp]
.Ltmp2132:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/slice/iter/macros.rs : 146
		if is_empty!(self) {
	cmp r12, rax
	je .LBB49_105
.Ltmp2133:
	mov r14, rbp
.Ltmp2134:
	jmp .LBB49_93
.Ltmp2135:
	.p2align	4, 0x90
.LBB49_92:
	mov r14, rbp
	mov r12, rbx
	mov rax, qword ptr [rsp]
.Ltmp2136:
	cmp rbx, rax
.Ltmp2137:
	je .LBB49_105
.Ltmp2138:
.LBB49_93:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 38
		let x = *bytes.next()?;
	movzx edi, byte ptr [r12]
.Ltmp2139:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 39
		if x < 128 {
	test dil, dil
	js .LBB49_95
.Ltmp2140:
	lea rbx, [r12 + 1]
.Ltmp2141:
	jmp .LBB49_100
.Ltmp2142:
	.p2align	4, 0x90
.LBB49_95:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 12
		(byte & (0x7F >> width)) as u32
	mov eax, edi
.Ltmp2143:
	and eax, 31
.Ltmp2144:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 18
		(ch << 6) | (byte & CONT_MASK) as u32
	movzx edx, byte ptr [r12 + 1]
.Ltmp2145:
	and edx, 63
.Ltmp2146:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 51
		if x >= 0xE0 {
	cmp dil, -33
	jbe .LBB49_98
.Ltmp2147:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 18
		(ch << 6) | (byte & CONT_MASK) as u32
	movzx ecx, byte ptr [r12 + 2]
.Ltmp2148:
	shl edx, 6
.Ltmp2149:
	and ecx, 63
	or ecx, edx
.Ltmp2150:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 59
		if x >= 0xF0 {
	cmp dil, -16
	jb .LBB49_99
.Ltmp2151:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/ptr/mut_ptr.rs : 424
		unsafe { intrinsics::offset(self, count) as *mut T }
	lea rbx, [r12 + 4]
.Ltmp2152:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 18
		(ch << 6) | (byte & CONT_MASK) as u32
	movzx edi, byte ptr [r12 + 3]
.Ltmp2153:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 65
		ch = (init & 7) << 18 | utf8_acc_cont_byte(y_z, w);
	and eax, 7
.Ltmp2154:
	shl eax, 18
.Ltmp2155:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 18
		(ch << 6) | (byte & CONT_MASK) as u32
	shl ecx, 6
.Ltmp2156:
	and edi, 63
	or edi, ecx
.Ltmp2157:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 65
		ch = (init & 7) << 18 | utf8_acc_cont_byte(y_z, w);
	or edi, eax
.Ltmp2158:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/iter.rs : 140
		match self.iter.next() {
	cmp edi, 1114112
	jne .LBB49_100
	jmp .LBB49_107
.Ltmp2159:
.LBB49_98:
	lea rbx, [r12 + 2]
.Ltmp2160:
	shl eax, 6
	or eax, edx
	mov edi, eax
	jmp .LBB49_100
.Ltmp2161:
.LBB49_99:
	lea rbx, [r12 + 3]
.Ltmp2162:
	shl eax, 12
	or ecx, eax
	mov edi, ecx
.Ltmp2163:
	.p2align	4, 0x90
.LBB49_100:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/iter.rs : 145
		self.front_offset += pre_len - len;
	mov rbp, rbx
	sub rbp, r12
	add rbp, r14
.Ltmp2164:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/char/methods.rs : 816
		match self {
	cmp edi, 32
	ja .LBB49_102
.Ltmp2165:
	mov eax, edi
	movabs rcx, 4294983168
	bt rcx, rax
	jb .LBB49_88
.Ltmp2166:
.LBB49_102:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/char/methods.rs : 818
		c => c > '\x7f' && unicode::White_Space(c),
	cmp edi, 128
	jb .LBB49_92
.Ltmp2167:
.Ltmp1901:
	call qword ptr [rip + core::unicode::unicode_data::white_space::lookup@GOTPCREL]
.Ltmp2168:
.Ltmp1902:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/pattern.rs : 665
		if self.char_eq.matches(c) {
	test al, al
	je .LBB49_92
	jmp .LBB49_88
.Ltmp2169:
	.p2align	4, 0x90
.LBB49_105:
	mov r12, rax
.Ltmp2170:
.LBB49_106:
	mov al, 1
	mov qword ptr [rsp + 80], rax
.Ltmp2171:
	mov rbx, r15
	mov r14, qword ptr [rsp + 8]
.Ltmp2172:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/mod.rs : 180
		self.len() == 0
	sub r14, r15
.Ltmp2173:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/iter/traits/iterator.rs : 2186
		accum = f(accum, x)?;
	je .LBB49_89
	jmp .LBB49_108
.Ltmp2174:
.LBB49_107:
	mov rbp, r14
.Ltmp2175:
	mov r12, rbx
.Ltmp2176:
	jmp .LBB49_106
.Ltmp2177:
.LBB49_108:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/vec/mod.rs : 790
		self.buf.capacity()
	mov rsi, qword ptr [rsp + 24]
	mov r13, qword ptr [rsp + 112]
.Ltmp2178:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/vec/mod.rs : 2653
		if len == self.capacity() {
	cmp rsi, r13
	mov rcx, qword ptr [rsp + 96]
	je .LBB49_85
	jmp .LBB49_87
.Ltmp2179:
	.p2align	4, 0x90
.LBB49_109:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/vec/spec_from_iter_nested.rs : 44
		vector
	mov rsi, qword ptr [rsp + 32]
	mov qword ptr [rsp + 304], rsi
	movupd xmm0, xmmword ptr [rsp + 16]
	movapd xmmword ptr [rsp + 288], xmm0
.Ltmp2180:
		// ./src/main.rs : 89
		if cmds.len() == 0 {
	test rsi, rsi
	je .LBB49_554
.Ltmp2181:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/vec/mod.rs : 1138
		let ptr = self.buf.ptr();
	mov rbx, qword ptr [rsp + 288]
.Ltmp2182:
		// ./src/main.rs : 93
		"pop" => {
	mov rax, qword ptr [rbx]
	mov rcx, qword ptr [rbx + 8]
.Ltmp2183:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/slice/cmp.rs : 83
		if self.len() != other.len() {
	cmp rcx, 8
	je .LBB49_188
.Ltmp2184:
	cmp rcx, 5
	lea r12, [rsp + 16]
	lea r13, [rsp + 120]
	mov rbp, qword ptr [rip + __rust_alloc@GOTPCREL]
	je .LBB49_126
.Ltmp2185:
	cmp rcx, 3
	jne .LBB49_574
.Ltmp2186:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/slice/cmp.rs : 91
		memcmp(self.as_ptr() as *const u8, other.as_ptr() as *const u8, size) == 0
	movzx ecx, word ptr [rax]
.Ltmp2187:
	xor ecx, 28528
	movzx edx, byte ptr [rax + 2]
	xor edx, 112
	or dx, cx
.Ltmp2188:
		// ./src/main.rs : 93
		"pop" => {
	je .LBB49_246
.Ltmp2189:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/slice/cmp.rs : 91
		memcmp(self.as_ptr() as *const u8, other.as_ptr() as *const u8, size) == 0
	movzx ecx, word ptr [rax]
	xor ecx, 30067
	movzx eax, byte ptr [rax + 2]
.Ltmp2190:
	xor eax, 109
	or ax, cx
.Ltmp2191:
		// ./src/main.rs : 100
		"sum" => {
	jne .LBB49_574
.Ltmp2192:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/slice/index.rs : 302
		} else if self.end > slice.len() {
	cmp rsi, 3
	jbe .LBB49_584
.Ltmp2193:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/alloc.rs : 89
		unsafe { __rust_alloc(layout.size(), layout.align()) }
	mov edi, 24
	mov esi, 8
	call rbp
.Ltmp2194:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/raw_vec.rs : 188
		let ptr = match result {
	test rax, rax
	je .LBB49_585
.Ltmp2195:
	mov rbp, rax
.Ltmp2196:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/vec/mod.rs : 613
		Vec { buf: RawVec::with_capacity_in(capacity, alloc), len: 0 }
	mov qword ptr [rsp + 168], rax
	movapd xmm0, xmmword ptr [rip + .LCPI49_10]
	movupd xmmword ptr [rsp + 176], xmm0
.Ltmp2197:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/iter/adapters/map.rs : 124
		self.iter.fold(init, map_fold(self.f, g))
	lea rax, [rsp + 184]
.Ltmp2198:
	mov qword ptr [rsp + 24], rax
.Ltmp2199:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/iter/traits/iterator.rs : 2362
		accum = f(accum, x);
	mov rsi, qword ptr [rbx + 16]
	mov rdx, qword ptr [rbx + 24]
.Ltmp2200:
.Ltmp1707:
		// ./src/main.rs : 101
		let v: Vec<f64> = cmds[1..4].iter().map(|&x| x.parse().expect("Invalid number")).collect();// format!("Invalid number {}", x)
	mov rdi, r13
	call core::str::<impl str>::parse
.Ltmp2201:
.Ltmp1708:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/result.rs : 1033
		match self {
	cmp byte ptr [rsp + 120], 0
.Ltmp2202:
	jne .LBB49_583
.Ltmp2203:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/result.rs : 1034
		Ok(t) => t,
	movsd xmm0, qword ptr [rsp + 128]
.Ltmp2204:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/ptr/mod.rs : 1177
		copy_nonoverlapping(&src as *const T, dst, 1);
	movsd qword ptr [rbp], xmm0
.Ltmp2205:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/ptr/mut_ptr.rs : 424
		unsafe { intrinsics::offset(self, count) as *mut T }
	lea r14, [rbp + 8]
.Ltmp2206:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/iter/traits/iterator.rs : 2362
		accum = f(accum, x);
	mov rsi, qword ptr [rbx + 32]
	mov rdx, qword ptr [rbx + 40]
.Ltmp2207:
.Ltmp1710:
		// ./src/main.rs : 101
		let v: Vec<f64> = cmds[1..4].iter().map(|&x| x.parse().expect("Invalid number")).collect();// format!("Invalid number {}", x)
	mov rdi, r13
	call core::str::<impl str>::parse
.Ltmp2208:
.Ltmp1711:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/result.rs : 1033
		match self {
	cmp byte ptr [rsp + 120], 0
.Ltmp2209:
	jne .LBB49_586
.Ltmp2210:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/result.rs : 1034
		Ok(t) => t,
	movsd xmm0, qword ptr [rsp + 128]
.Ltmp2211:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/ptr/mod.rs : 1177
		copy_nonoverlapping(&src as *const T, dst, 1);
	movsd qword ptr [rbp + 8], xmm0
.Ltmp2212:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/ptr/mut_ptr.rs : 424
		unsafe { intrinsics::offset(self, count) as *mut T }
	add rbp, 16
.Ltmp2213:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/iter/traits/iterator.rs : 2362
		accum = f(accum, x);
	mov rsi, qword ptr [rbx + 48]
	mov rdx, qword ptr [rbx + 56]
.Ltmp2214:
.Ltmp1713:
		// ./src/main.rs : 101
		let v: Vec<f64> = cmds[1..4].iter().map(|&x| x.parse().expect("Invalid number")).collect();// format!("Invalid number {}", x)
	mov rdi, r13
	call core::str::<impl str>::parse
.Ltmp2215:
.Ltmp1714:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/result.rs : 1033
		match self {
	cmp byte ptr [rsp + 120], 0
.Ltmp2216:
	jne .LBB49_587
.Ltmp2217:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/result.rs : 1034
		Ok(t) => t,
	movsd xmm0, qword ptr [rsp + 128]
.Ltmp2218:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/ptr/mod.rs : 1177
		copy_nonoverlapping(&src as *const T, dst, 1);
	movsd qword ptr [rbp], xmm0
.Ltmp2219:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/vec/set_len_on_drop.rs : 26
		*self.len = self.local_len;
	mov qword ptr [rsp + 184], 3
.Ltmp2220:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/vec/mod.rs : 1138
		let ptr = self.buf.ptr();
	mov rdi, qword ptr [rsp + 168]
.Ltmp2221:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/vec/mod.rs : 2446
		unsafe { slice::from_raw_parts_mut(self.as_mut_ptr(), self.len) }
	mov rcx, qword ptr [rsp + 264]
.Ltmp2222:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/slice/iter/macros.rs : 146
		if is_empty!(self) {
	test rcx, rcx
	je .LBB49_201
.Ltmp2223:
	movupd xmm0, xmmword ptr [rdi]
	movsd xmm1, qword ptr [rdi + 16]
.Ltmp2224:
	mov rax, qword ptr [rsp + 248]
	lea rcx, [rcx + 2*rcx]
	lea rcx, [rax + 8*rcx]
.Ltmp2225:
	.p2align	4, 0x90
.LBB49_125:
		// ./src/main.rs : 37
		t.a += a;
	movupd xmm2, xmmword ptr [rax]
	addpd xmm2, xmm0
	movupd xmmword ptr [rax], xmm2
	movsd xmm2, qword ptr [rax + 16]
		// ./src/main.rs : 39
		t.c += c;
	addsd xmm2, xmm1
	movsd qword ptr [rax + 16], xmm2
.Ltmp2226:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/slice/iter/macros.rs : 146
		if is_empty!(self) {
	add rax, 24
.Ltmp2227:
	cmp rcx, rax
	jne .LBB49_125
	jmp .LBB49_200
.Ltmp2228:
.LBB49_126:
	mov ecx, dword ptr [rax]
.Ltmp2229:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/slice/cmp.rs : 91
		memcmp(self.as_ptr() as *const u8, other.as_ptr() as *const u8, size) == 0
	mov edx, 1852404336
	xor ecx, edx
	movzx edx, byte ptr [rax + 4]
	xor edx, 116
	or edx, ecx
.Ltmp2230:
		// ./src/main.rs : 108
		"print" => { operate_print(&buff); },
	je .LBB49_242
.Ltmp2231:
	mov ecx, dword ptr [rax]
.Ltmp2232:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/slice/cmp.rs : 91
		memcmp(self.as_ptr() as *const u8, other.as_ptr() as *const u8, size) == 0
	mov edx, 1668179298
	xor ecx, edx
	movzx eax, byte ptr [rax + 4]
.Ltmp2233:
	xor eax, 104
	or eax, ecx
.Ltmp2234:
		// ./src/main.rs : 109
		"bench" => {
	jne .LBB49_574
.Ltmp2235:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/slice/index.rs : 241
		&(*slice)[self]
	cmp rsi, 1
	jbe .LBB49_570
.Ltmp2236:
		// ./src/main.rs : 110
		let br = the_benchmark(&mut buff, cmds[1].parse().expect("Invalid number")).to_string();
	mov rdi, qword ptr [rbx + 16]
	mov rsi, qword ptr [rbx + 24]
.Ltmp2237:
.Ltmp1651:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/mod.rs : 2345
		FromStr::from_str(self)
	call qword ptr [rip + core::num::<impl core::str::traits::FromStr for i32>::from_str@GOTPCREL]
.Ltmp2238:
.Ltmp1652:
	mov rbx, rax
.Ltmp2239:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/result.rs : 1033
		match self {
	test bl, 1
.Ltmp2240:
	jne .LBB49_590
.Ltmp2241:
.Ltmp1655:
		// ./src/main.rs : 58
		let start = Instant::now();
	call qword ptr [rip + std::time::Instant::now@GOTPCREL]
.Ltmp1656:
.Ltmp2242:
	shr rbx, 32
.Ltmp2243:
	mov qword ptr [rsp + 16], rax
	mov qword ptr [rsp + 24], rdx
.Ltmp2244:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/cmp.rs : 1396
		fn lt(&self, other: &$t) -> bool { (*self) < (*other) }
	test ebx, ebx
.Ltmp2245:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/iter/range.rs : 621
		if self.start < self.end {
	jle .LBB49_205
.Ltmp2246:
	mov rcx, qword ptr [rsp + 264]
	test rcx, rcx
.Ltmp2247:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/slice/iter/macros.rs : 146
		if is_empty!(self) {
	je .LBB49_205
.Ltmp2248:
	mov rax, qword ptr [rsp + 248]
	shl rcx, 3
	lea rcx, [rcx + 2*rcx]
	xor edx, edx
	jmp .LBB49_136
.Ltmp2249:
	.p2align	4, 0x90
.LBB49_135:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/num/int_macros.rs : 454
		unsafe { intrinsics::unchecked_add(self, rhs) }
	add edx, 1
.Ltmp2250:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/cmp.rs : 1396
		fn lt(&self, other: &$t) -> bool { (*self) < (*other) }
	cmp edx, ebx
.Ltmp2251:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/iter/range.rs : 621
		if self.start < self.end {
	je .LBB49_205
.Ltmp2252:
.LBB49_136:
	xor esi, esi
	jmp .LBB49_138
.Ltmp2253:
	.p2align	4, 0x90
.LBB49_137:
		// ./src/main.rs : 67
		t.c += p1;
	addsd xmm2, xmm3
.Ltmp2254:
	movsd qword ptr [rax + rsi + 16], xmm2
.Ltmp2255:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/slice/iter/macros.rs : 146
		if is_empty!(self) {
	add rsi, 24
.Ltmp2256:
	cmp rcx, rsi
	je .LBB49_135
.Ltmp2257:
.LBB49_138:
		// ./src/main.rs : 62
		if t.a > t.b {
	movupd xmm0, xmmword ptr [rax + rsi]
	movapd xmm1, xmm0
	unpckhpd xmm1, xmm0
	ucomisd xmm0, xmm1
	jbe .LBB49_154
.Ltmp2258:
	movsd xmm5, qword ptr [rax + rsi + 16]
.Ltmp2259:
		// ./src/main.rs : 63
		let mut p1 = t.a*5.0 - t.b*4.0 + t.a*t.c*2.0;
	movapd xmm3, xmm0
	mulpd xmm3, xmmword ptr [rip + .LCPI49_6]
	movapd xmm2, xmm3
	unpckhpd xmm2, xmm3
	subsd xmm3, xmm2
	movapd xmm2, xmm0
	mulsd xmm2, xmm5
	addsd xmm2, xmm2
.Ltmp2260:
		// ./src/main.rs : 64
		if t.a >= 0.0 { p1 += 2.0; }
	ucomisd xmm0, qword ptr [rip + .LCPI49_19]
.Ltmp2261:
		// ./src/main.rs : 63
		let mut p1 = t.a*5.0 - t.b*4.0 + t.a*t.c*2.0;
	addsd xmm2, xmm3
.Ltmp2262:
		// ./src/main.rs : 64
		if t.a >= 0.0 { p1 += 2.0; }
	xorpd xmm4, xmm4
	cmpnlesd xmm4, xmm0
	movapd xmm6, xmm4
	andpd xmm6, xmm2
	movsd xmm8, qword ptr [rip + .LCPI49_7]
	addsd xmm2, xmm8
.Ltmp2263:
	andnpd xmm4, xmm2
	orpd xmm4, xmm6
.Ltmp2264:
		// ./src/main.rs : 65
		if t.b >= 0.0 { p1 *= 1.5; }
	xorpd xmm6, xmm6
	cmpnlesd xmm6, xmm1
	movapd xmm2, xmm6
	andpd xmm2, xmm4
	mulsd xmm4, qword ptr [rip + .LCPI49_8]
.Ltmp2265:
	andnpd xmm6, xmm4
	orpd xmm6, xmm2
.Ltmp2266:
		// ./src/main.rs : 66
		if t.b*t.a >= 0.0 { p1 += 0.5; }
	movapd xmm4, xmm0
	mulsd xmm4, xmm1
	xorpd xmm2, xmm2
	cmpnlesd xmm2, xmm4
	movapd xmm7, xmm2
	andpd xmm7, xmm6
	addsd xmm6, qword ptr [rip + .LCPI49_9]
.Ltmp2267:
	andnpd xmm2, xmm6
	orpd xmm2, xmm7
.Ltmp2268:
		// ./src/main.rs : 67
		t.c += p1;
	addsd xmm2, xmm5
.Ltmp2269:
		// ./src/main.rs : 63
		let mut p1 = t.a*5.0 - t.b*4.0 + t.a*t.c*2.0;
	movapd xmm5, xmm0
	mulsd xmm5, xmm2
	addsd xmm5, xmm5
	addsd xmm5, xmm3
.Ltmp2270:
		// ./src/main.rs : 64
		if t.a >= 0.0 { p1 += 2.0; }
	jb .LBB49_140
.Ltmp2271:
	addsd xmm5, xmm8
.Ltmp2272:
		// ./src/main.rs : 65
		if t.b >= 0.0 { p1 *= 1.5; }
	ucomisd xmm1, qword ptr [rip + .LCPI49_19]
	jae .LBB49_172
.Ltmp2273:
.LBB49_141:
		// ./src/main.rs : 66
		if t.b*t.a >= 0.0 { p1 += 0.5; }
	ucomisd xmm4, qword ptr [rip + .LCPI49_19]
	jb .LBB49_143
.Ltmp2274:
.LBB49_142:
	addsd xmm5, qword ptr [rip + .LCPI49_9]
.Ltmp2275:
.LBB49_143:
		// ./src/main.rs : 64
		if t.a >= 0.0 { p1 += 2.0; }
	ucomisd xmm0, qword ptr [rip + .LCPI49_19]
		// ./src/main.rs : 67
		t.c += p1;
	addsd xmm2, xmm5
.Ltmp2276:
		// ./src/main.rs : 63
		let mut p1 = t.a*5.0 - t.b*4.0 + t.a*t.c*2.0;
	movapd xmm5, xmm0
	mulsd xmm5, xmm2
	addsd xmm5, xmm5
	addsd xmm5, xmm3
.Ltmp2277:
		// ./src/main.rs : 64
		if t.a >= 0.0 { p1 += 2.0; }
	jb .LBB49_144
.Ltmp2278:
	addsd xmm5, qword ptr [rip + .LCPI49_7]
.Ltmp2279:
		// ./src/main.rs : 65
		if t.b >= 0.0 { p1 *= 1.5; }
	ucomisd xmm1, qword ptr [rip + .LCPI49_19]
	jae .LBB49_174
.Ltmp2280:
.LBB49_145:
		// ./src/main.rs : 66
		if t.b*t.a >= 0.0 { p1 += 0.5; }
	ucomisd xmm4, qword ptr [rip + .LCPI49_19]
	jb .LBB49_147
.Ltmp2281:
.LBB49_146:
	addsd xmm5, qword ptr [rip + .LCPI49_9]
.Ltmp2282:
.LBB49_147:
		// ./src/main.rs : 64
		if t.a >= 0.0 { p1 += 2.0; }
	ucomisd xmm0, qword ptr [rip + .LCPI49_19]
		// ./src/main.rs : 67
		t.c += p1;
	addsd xmm2, xmm5
.Ltmp2283:
		// ./src/main.rs : 63
		let mut p1 = t.a*5.0 - t.b*4.0 + t.a*t.c*2.0;
	movapd xmm5, xmm0
	mulsd xmm5, xmm2
	addsd xmm5, xmm5
	addsd xmm5, xmm3
.Ltmp2284:
		// ./src/main.rs : 64
		if t.a >= 0.0 { p1 += 2.0; }
	jb .LBB49_148
.Ltmp2285:
	addsd xmm5, qword ptr [rip + .LCPI49_7]
.Ltmp2286:
		// ./src/main.rs : 65
		if t.b >= 0.0 { p1 *= 1.5; }
	ucomisd xmm1, qword ptr [rip + .LCPI49_19]
	jae .LBB49_176
.Ltmp2287:
.LBB49_149:
		// ./src/main.rs : 66
		if t.b*t.a >= 0.0 { p1 += 0.5; }
	ucomisd xmm4, qword ptr [rip + .LCPI49_19]
	jb .LBB49_151
.Ltmp2288:
.LBB49_150:
	addsd xmm5, qword ptr [rip + .LCPI49_9]
.Ltmp2289:
.LBB49_151:
		// ./src/main.rs : 64
		if t.a >= 0.0 { p1 += 2.0; }
	ucomisd xmm0, qword ptr [rip + .LCPI49_19]
		// ./src/main.rs : 67
		t.c += p1;
	addsd xmm2, xmm5
.Ltmp2290:
		// ./src/main.rs : 63
		let mut p1 = t.a*5.0 - t.b*4.0 + t.a*t.c*2.0;
	mulsd xmm0, xmm2
	addsd xmm0, xmm0
	addsd xmm3, xmm0
.Ltmp2291:
		// ./src/main.rs : 64
		if t.a >= 0.0 { p1 += 2.0; }
	jb .LBB49_152
.Ltmp2292:
	addsd xmm3, qword ptr [rip + .LCPI49_7]
.Ltmp2293:
		// ./src/main.rs : 65
		if t.b >= 0.0 { p1 *= 1.5; }
	ucomisd xmm1, qword ptr [rip + .LCPI49_19]
	jae .LBB49_178
.Ltmp2294:
.LBB49_153:
		// ./src/main.rs : 66
		if t.b*t.a >= 0.0 { p1 += 0.5; }
	ucomisd xmm4, qword ptr [rip + .LCPI49_19]
	jb .LBB49_137
	jmp .LBB49_179
.Ltmp2295:
	.p2align	4, 0x90
.LBB49_154:
		// ./src/main.rs : 69
		let mut p1 = t.a*6.0 - t.b*5.1 + t.a*t.c*1.8;
	movapd xmm3, xmm0
	mulpd xmm3, xmmword ptr [rip + .LCPI49_1]
	movapd xmm2, xmm3
	unpckhpd xmm2, xmm3
	subsd xmm3, xmm2
	movsd xmm5, qword ptr [rax + rsi + 16]
	movapd xmm2, xmm0
	mulsd xmm2, xmm5
	movsd xmm8, qword ptr [rip + .LCPI49_2]
	mulsd xmm2, xmm8
.Ltmp2296:
		// ./src/main.rs : 70
		if t.b >= 0.0 { p1 *= 1.1; }
	ucomisd xmm1, qword ptr [rip + .LCPI49_19]
.Ltmp2297:
		// ./src/main.rs : 69
		let mut p1 = t.a*6.0 - t.b*5.1 + t.a*t.c*1.8;
	addsd xmm2, xmm3
.Ltmp2298:
		// ./src/main.rs : 70
		if t.b >= 0.0 { p1 *= 1.1; }
	xorpd xmm4, xmm4
	cmpnlesd xmm4, xmm1
	movapd xmm6, xmm4
	andpd xmm6, xmm2
	movsd xmm9, qword ptr [rip + .LCPI49_3]
	mulsd xmm2, xmm9
.Ltmp2299:
	andnpd xmm4, xmm2
	orpd xmm4, xmm6
.Ltmp2300:
		// ./src/main.rs : 71
		if t.a >= 0.0 { p1 += 2.1; }
	xorpd xmm6, xmm6
	cmpnlesd xmm6, xmm0
	movapd xmm2, xmm6
	andpd xmm2, xmm4
	addsd xmm4, qword ptr [rip + .LCPI49_4]
.Ltmp2301:
	andnpd xmm6, xmm4
	orpd xmm6, xmm2
.Ltmp2302:
		// ./src/main.rs : 72
		if t.b*t.a >= 0.0 { p1 += 0.6; }
	movapd xmm4, xmm0
	mulsd xmm4, xmm1
	xorpd xmm2, xmm2
	cmpnlesd xmm2, xmm4
	movapd xmm7, xmm2
	andpd xmm7, xmm6
	addsd xmm6, qword ptr [rip + .LCPI49_5]
.Ltmp2303:
	andnpd xmm2, xmm6
	orpd xmm2, xmm7
.Ltmp2304:
		// ./src/main.rs : 73
		t.c += p1;
	addsd xmm2, xmm5
.Ltmp2305:
		// ./src/main.rs : 69
		let mut p1 = t.a*6.0 - t.b*5.1 + t.a*t.c*1.8;
	movapd xmm5, xmm0
	mulsd xmm5, xmm2
	mulsd xmm5, xmm8
	addsd xmm5, xmm3
.Ltmp2306:
		// ./src/main.rs : 70
		if t.b >= 0.0 { p1 *= 1.1; }
	jb .LBB49_155
.Ltmp2307:
	mulsd xmm5, xmm9
.Ltmp2308:
		// ./src/main.rs : 71
		if t.a >= 0.0 { p1 += 2.1; }
	ucomisd xmm0, qword ptr [rip + .LCPI49_19]
	jae .LBB49_181
.Ltmp2309:
.LBB49_156:
		// ./src/main.rs : 72
		if t.b*t.a >= 0.0 { p1 += 0.6; }
	ucomisd xmm4, qword ptr [rip + .LCPI49_19]
	jb .LBB49_158
.Ltmp2310:
.LBB49_157:
	addsd xmm5, qword ptr [rip + .LCPI49_5]
.Ltmp2311:
.LBB49_158:
		// ./src/main.rs : 70
		if t.b >= 0.0 { p1 *= 1.1; }
	ucomisd xmm1, qword ptr [rip + .LCPI49_19]
		// ./src/main.rs : 73
		t.c += p1;
	addsd xmm2, xmm5
.Ltmp2312:
		// ./src/main.rs : 69
		let mut p1 = t.a*6.0 - t.b*5.1 + t.a*t.c*1.8;
	movapd xmm5, xmm0
	mulsd xmm5, xmm2
	mulsd xmm5, qword ptr [rip + .LCPI49_2]
	addsd xmm5, xmm3
.Ltmp2313:
		// ./src/main.rs : 70
		if t.b >= 0.0 { p1 *= 1.1; }
	jb .LBB49_159
.Ltmp2314:
	mulsd xmm5, qword ptr [rip + .LCPI49_3]
.Ltmp2315:
		// ./src/main.rs : 71
		if t.a >= 0.0 { p1 += 2.1; }
	ucomisd xmm0, qword ptr [rip + .LCPI49_19]
	jae .LBB49_183
.Ltmp2316:
.LBB49_160:
		// ./src/main.rs : 72
		if t.b*t.a >= 0.0 { p1 += 0.6; }
	ucomisd xmm4, qword ptr [rip + .LCPI49_19]
	jb .LBB49_162
.Ltmp2317:
.LBB49_161:
	addsd xmm5, qword ptr [rip + .LCPI49_5]
.Ltmp2318:
.LBB49_162:
		// ./src/main.rs : 70
		if t.b >= 0.0 { p1 *= 1.1; }
	ucomisd xmm1, qword ptr [rip + .LCPI49_19]
		// ./src/main.rs : 73
		t.c += p1;
	addsd xmm2, xmm5
.Ltmp2319:
		// ./src/main.rs : 69
		let mut p1 = t.a*6.0 - t.b*5.1 + t.a*t.c*1.8;
	movapd xmm5, xmm0
	mulsd xmm5, xmm2
	mulsd xmm5, qword ptr [rip + .LCPI49_2]
	addsd xmm5, xmm3
.Ltmp2320:
		// ./src/main.rs : 70
		if t.b >= 0.0 { p1 *= 1.1; }
	jb .LBB49_163
.Ltmp2321:
	mulsd xmm5, qword ptr [rip + .LCPI49_3]
.Ltmp2322:
		// ./src/main.rs : 71
		if t.a >= 0.0 { p1 += 2.1; }
	ucomisd xmm0, qword ptr [rip + .LCPI49_19]
	jae .LBB49_185
.Ltmp2323:
.LBB49_164:
		// ./src/main.rs : 72
		if t.b*t.a >= 0.0 { p1 += 0.6; }
	ucomisd xmm4, qword ptr [rip + .LCPI49_19]
	jb .LBB49_166
.Ltmp2324:
.LBB49_165:
	addsd xmm5, qword ptr [rip + .LCPI49_5]
.Ltmp2325:
.LBB49_166:
		// ./src/main.rs : 70
		if t.b >= 0.0 { p1 *= 1.1; }
	ucomisd xmm1, qword ptr [rip + .LCPI49_19]
		// ./src/main.rs : 73
		t.c += p1;
	addsd xmm2, xmm5
.Ltmp2326:
		// ./src/main.rs : 69
		let mut p1 = t.a*6.0 - t.b*5.1 + t.a*t.c*1.8;
	movapd xmm1, xmm0
	mulsd xmm1, xmm2
	mulsd xmm1, qword ptr [rip + .LCPI49_2]
	addsd xmm3, xmm1
.Ltmp2327:
		// ./src/main.rs : 70
		if t.b >= 0.0 { p1 *= 1.1; }
	jb .LBB49_167
.Ltmp2328:
	mulsd xmm3, qword ptr [rip + .LCPI49_3]
.Ltmp2329:
		// ./src/main.rs : 71
		if t.a >= 0.0 { p1 += 2.1; }
	ucomisd xmm0, qword ptr [rip + .LCPI49_19]
	jae .LBB49_187
.Ltmp2330:
.LBB49_168:
		// ./src/main.rs : 72
		if t.b*t.a >= 0.0 { p1 += 0.6; }
	ucomisd xmm4, qword ptr [rip + .LCPI49_19]
	jb .LBB49_170
.Ltmp2331:
.LBB49_169:
	addsd xmm3, qword ptr [rip + .LCPI49_5]
.Ltmp2332:
.LBB49_170:
		// ./src/main.rs : 73
		t.c += p1;
	addsd xmm2, xmm3
.Ltmp2333:
	movsd qword ptr [rax + rsi + 16], xmm2
.Ltmp2334:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/slice/iter/macros.rs : 146
		if is_empty!(self) {
	add rsi, 24
.Ltmp2335:
	cmp rcx, rsi
	jne .LBB49_138
	jmp .LBB49_135
.Ltmp2336:
	.p2align	4, 0x90
.LBB49_140:
		// ./src/main.rs : 65
		if t.b >= 0.0 { p1 *= 1.5; }
	ucomisd xmm1, qword ptr [rip + .LCPI49_19]
	jb .LBB49_141
.Ltmp2337:
.LBB49_172:
	mulsd xmm5, qword ptr [rip + .LCPI49_8]
.Ltmp2338:
		// ./src/main.rs : 66
		if t.b*t.a >= 0.0 { p1 += 0.5; }
	ucomisd xmm4, qword ptr [rip + .LCPI49_19]
	jae .LBB49_142
	jmp .LBB49_143
.Ltmp2339:
	.p2align	4, 0x90
.LBB49_144:
		// ./src/main.rs : 65
		if t.b >= 0.0 { p1 *= 1.5; }
	ucomisd xmm1, qword ptr [rip + .LCPI49_19]
	jb .LBB49_145
.Ltmp2340:
.LBB49_174:
	mulsd xmm5, qword ptr [rip + .LCPI49_8]
.Ltmp2341:
		// ./src/main.rs : 66
		if t.b*t.a >= 0.0 { p1 += 0.5; }
	ucomisd xmm4, qword ptr [rip + .LCPI49_19]
	jae .LBB49_146
	jmp .LBB49_147
.Ltmp2342:
	.p2align	4, 0x90
.LBB49_148:
		// ./src/main.rs : 65
		if t.b >= 0.0 { p1 *= 1.5; }
	ucomisd xmm1, qword ptr [rip + .LCPI49_19]
	jb .LBB49_149
.Ltmp2343:
.LBB49_176:
	mulsd xmm5, qword ptr [rip + .LCPI49_8]
.Ltmp2344:
		// ./src/main.rs : 66
		if t.b*t.a >= 0.0 { p1 += 0.5; }
	ucomisd xmm4, qword ptr [rip + .LCPI49_19]
	jae .LBB49_150
	jmp .LBB49_151
.Ltmp2345:
	.p2align	4, 0x90
.LBB49_152:
		// ./src/main.rs : 65
		if t.b >= 0.0 { p1 *= 1.5; }
	ucomisd xmm1, qword ptr [rip + .LCPI49_19]
	jb .LBB49_153
.Ltmp2346:
.LBB49_178:
	mulsd xmm3, qword ptr [rip + .LCPI49_8]
.Ltmp2347:
		// ./src/main.rs : 66
		if t.b*t.a >= 0.0 { p1 += 0.5; }
	ucomisd xmm4, qword ptr [rip + .LCPI49_19]
	jb .LBB49_137
.Ltmp2348:
.LBB49_179:
	addsd xmm3, qword ptr [rip + .LCPI49_9]
	jmp .LBB49_137
.Ltmp2349:
	.p2align	4, 0x90
.LBB49_155:
		// ./src/main.rs : 71
		if t.a >= 0.0 { p1 += 2.1; }
	ucomisd xmm0, qword ptr [rip + .LCPI49_19]
	jb .LBB49_156
.Ltmp2350:
.LBB49_181:
	addsd xmm5, qword ptr [rip + .LCPI49_4]
.Ltmp2351:
		// ./src/main.rs : 72
		if t.b*t.a >= 0.0 { p1 += 0.6; }
	ucomisd xmm4, qword ptr [rip + .LCPI49_19]
	jae .LBB49_157
	jmp .LBB49_158
.Ltmp2352:
	.p2align	4, 0x90
.LBB49_159:
		// ./src/main.rs : 71
		if t.a >= 0.0 { p1 += 2.1; }
	ucomisd xmm0, qword ptr [rip + .LCPI49_19]
	jb .LBB49_160
.Ltmp2353:
.LBB49_183:
	addsd xmm5, qword ptr [rip + .LCPI49_4]
.Ltmp2354:
		// ./src/main.rs : 72
		if t.b*t.a >= 0.0 { p1 += 0.6; }
	ucomisd xmm4, qword ptr [rip + .LCPI49_19]
	jae .LBB49_161
	jmp .LBB49_162
.Ltmp2355:
	.p2align	4, 0x90
.LBB49_163:
		// ./src/main.rs : 71
		if t.a >= 0.0 { p1 += 2.1; }
	ucomisd xmm0, qword ptr [rip + .LCPI49_19]
	jb .LBB49_164
.Ltmp2356:
.LBB49_185:
	addsd xmm5, qword ptr [rip + .LCPI49_4]
.Ltmp2357:
		// ./src/main.rs : 72
		if t.b*t.a >= 0.0 { p1 += 0.6; }
	ucomisd xmm4, qword ptr [rip + .LCPI49_19]
	jae .LBB49_165
	jmp .LBB49_166
.Ltmp2358:
	.p2align	4, 0x90
.LBB49_167:
		// ./src/main.rs : 71
		if t.a >= 0.0 { p1 += 2.1; }
	ucomisd xmm0, qword ptr [rip + .LCPI49_19]
	jb .LBB49_168
.Ltmp2359:
.LBB49_187:
	addsd xmm3, qword ptr [rip + .LCPI49_4]
.Ltmp2360:
		// ./src/main.rs : 72
		if t.b*t.a >= 0.0 { p1 += 0.6; }
	ucomisd xmm4, qword ptr [rip + .LCPI49_19]
	jae .LBB49_169
	jmp .LBB49_170
.Ltmp2361:
.LBB49_188:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/slice/cmp.rs : 91
		memcmp(self.as_ptr() as *const u8, other.as_ptr() as *const u8, size) == 0
	movabs rcx, 8749491774301173101
.Ltmp2362:
	cmp qword ptr [rax], rcx
	lea r12, [rsp + 16]
	lea r13, [rsp + 120]
	mov rcx, qword ptr [rip + __rust_alloc@GOTPCREL]
.Ltmp2363:
		// ./src/main.rs : 104
		"multiply" => {
	jne .LBB49_574
.Ltmp2364:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/slice/index.rs : 302
		} else if self.end > slice.len() {
	cmp rsi, 3
	jbe .LBB49_578
.Ltmp2365:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/alloc.rs : 89
		unsafe { __rust_alloc(layout.size(), layout.align()) }
	mov edi, 24
	mov esi, 8
	call rcx
.Ltmp2366:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/raw_vec.rs : 188
		let ptr = match result {
	test rax, rax
	je .LBB49_579
.Ltmp2367:
	mov rbp, rax
.Ltmp2368:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/vec/mod.rs : 613
		Vec { buf: RawVec::with_capacity_in(capacity, alloc), len: 0 }
	mov qword ptr [rsp + 168], rax
	movapd xmm0, xmmword ptr [rip + .LCPI49_10]
	movupd xmmword ptr [rsp + 176], xmm0
.Ltmp2369:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/iter/adapters/map.rs : 124
		self.iter.fold(init, map_fold(self.f, g))
	lea rax, [rsp + 184]
.Ltmp2370:
	mov qword ptr [rsp + 24], rax
.Ltmp2371:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/iter/traits/iterator.rs : 2362
		accum = f(accum, x);
	mov rsi, qword ptr [rbx + 16]
	mov rdx, qword ptr [rbx + 24]
.Ltmp2372:
.Ltmp1688:
		// ./src/main.rs : 105
		let v: Vec<f64> = cmds[1..4].iter().map(|&x| x.parse().expect("Invalid number")).collect();// format!("Invalid number {}", x)
	mov rdi, r13
	call core::str::<impl str>::parse
.Ltmp2373:
.Ltmp1689:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/result.rs : 1033
		match self {
	cmp byte ptr [rsp + 120], 0
.Ltmp2374:
	jne .LBB49_576
.Ltmp2375:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/result.rs : 1034
		Ok(t) => t,
	movsd xmm0, qword ptr [rsp + 128]
.Ltmp2376:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/ptr/mod.rs : 1177
		copy_nonoverlapping(&src as *const T, dst, 1);
	movsd qword ptr [rbp], xmm0
.Ltmp2377:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/ptr/mut_ptr.rs : 424
		unsafe { intrinsics::offset(self, count) as *mut T }
	lea r14, [rbp + 8]
.Ltmp2378:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/iter/traits/iterator.rs : 2362
		accum = f(accum, x);
	mov rsi, qword ptr [rbx + 32]
	mov rdx, qword ptr [rbx + 40]
.Ltmp2379:
.Ltmp1691:
		// ./src/main.rs : 105
		let v: Vec<f64> = cmds[1..4].iter().map(|&x| x.parse().expect("Invalid number")).collect();// format!("Invalid number {}", x)
	mov rdi, r13
	call core::str::<impl str>::parse
.Ltmp2380:
.Ltmp1692:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/result.rs : 1033
		match self {
	cmp byte ptr [rsp + 120], 0
.Ltmp2381:
	jne .LBB49_577
.Ltmp2382:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/result.rs : 1034
		Ok(t) => t,
	movsd xmm0, qword ptr [rsp + 128]
.Ltmp2383:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/ptr/mod.rs : 1177
		copy_nonoverlapping(&src as *const T, dst, 1);
	movsd qword ptr [rbp + 8], xmm0
.Ltmp2384:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/ptr/mut_ptr.rs : 424
		unsafe { intrinsics::offset(self, count) as *mut T }
	add rbp, 16
.Ltmp2385:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/iter/traits/iterator.rs : 2362
		accum = f(accum, x);
	mov rsi, qword ptr [rbx + 48]
	mov rdx, qword ptr [rbx + 56]
.Ltmp2386:
.Ltmp1694:
		// ./src/main.rs : 105
		let v: Vec<f64> = cmds[1..4].iter().map(|&x| x.parse().expect("Invalid number")).collect();// format!("Invalid number {}", x)
	mov rdi, r13
	call core::str::<impl str>::parse
.Ltmp2387:
.Ltmp1695:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/result.rs : 1033
		match self {
	cmp byte ptr [rsp + 120], 0
.Ltmp2388:
	jne .LBB49_580
.Ltmp2389:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/result.rs : 1034
		Ok(t) => t,
	movsd xmm0, qword ptr [rsp + 128]
.Ltmp2390:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/ptr/mod.rs : 1177
		copy_nonoverlapping(&src as *const T, dst, 1);
	movsd qword ptr [rbp], xmm0
.Ltmp2391:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/vec/set_len_on_drop.rs : 26
		*self.len = self.local_len;
	mov qword ptr [rsp + 184], 3
.Ltmp2392:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/vec/mod.rs : 1138
		let ptr = self.buf.ptr();
	mov rdi, qword ptr [rsp + 168]
.Ltmp2393:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/vec/mod.rs : 2446
		unsafe { slice::from_raw_parts_mut(self.as_mut_ptr(), self.len) }
	mov rcx, qword ptr [rsp + 264]
.Ltmp2394:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/slice/iter/macros.rs : 146
		if is_empty!(self) {
	test rcx, rcx
	je .LBB49_201
.Ltmp2395:
	movupd xmm0, xmmword ptr [rdi]
	movsd xmm1, qword ptr [rdi + 16]
.Ltmp2396:
	mov rax, qword ptr [rsp + 248]
	lea rcx, [rcx + 2*rcx]
	lea rcx, [rax + 8*rcx]
.Ltmp2397:
	.p2align	4, 0x90
.LBB49_199:
		// ./src/main.rs : 45
		t.a *= a;
	movupd xmm2, xmmword ptr [rax]
	mulpd xmm2, xmm0
	movupd xmmword ptr [rax], xmm2
	movsd xmm2, qword ptr [rax + 16]
		// ./src/main.rs : 47
		t.c *= c;
	mulsd xmm2, xmm1
	movsd qword ptr [rax + 16], xmm2
.Ltmp2398:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/slice/iter/macros.rs : 146
		if is_empty!(self) {
	add rax, 24
.Ltmp2399:
	cmp rcx, rax
	jne .LBB49_199
.Ltmp2400:
.LBB49_200:
	mov rdi, qword ptr [rsp + 168]
.LBB49_201:
.Ltmp2401:
	mov rax, qword ptr [rsp + 176]
.Ltmp2402:
	test rax, rax
	je .LBB49_436
.Ltmp2403:
	mov ecx, 8
	mul rcx
.Ltmp2404:
	test rdi, rdi
.Ltmp2405:
	je .LBB49_436
.Ltmp2406:
	test rax, rax
	je .LBB49_436
.Ltmp2407:
	mov edx, 8
	mov rsi, rax
	call qword ptr [rip + __rust_dealloc@GOTPCREL]
	jmp .LBB49_436
.Ltmp2408:
.LBB49_205:
.Ltmp1657:
		// ./src/main.rs : 78
		return start.elapsed().as_nanos();
	mov rdi, r12
	call qword ptr [rip + std::time::Instant::elapsed@GOTPCREL]
.Ltmp1658:
.Ltmp2409:
	mov ecx, edx
.Ltmp2410:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/time.rs : 463
		self.secs as u128 * NANOS_PER_SEC as u128 + self.nanos as u128
	mov edx, 1000000000
	mul rdx
	mov ecx, ecx
	add rcx, rax
	adc rdx, 0
.Ltmp2411:
		// ./src/main.rs : 110
		let br = the_benchmark(&mut buff, cmds[1].parse().expect("Invalid number")).to_string();
	mov qword ptr [rsp + 168], rcx
	mov qword ptr [rsp + 176], rdx
.Ltmp2412:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/vec/mod.rs : 425
		Vec { buf: RawVec::NEW, len: 0 }
	xorpd xmm0, xmm0
	lea rax, [rsp + 232]
	movupd xmmword ptr [rax], xmm0
.Ltmp2413:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/string.rs : 383
		String { vec: Vec::new() }
	mov qword ptr [rsp + 224], 1
.Ltmp2414:
.Ltmp1659:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/string.rs : 2403
		let mut formatter = core::fmt::Formatter::new(&mut buf);
	mov rdi, r12
	lea rsi, [rsp + 224]
	lea rdx, [rip + .L__unnamed_2]
	call qword ptr [rip + core::fmt::Formatter::new@GOTPCREL]
.Ltmp1660:
.Ltmp2415:
.Ltmp1661:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/string.rs : 2405
		fmt::Display::fmt(self, &mut formatter)
	lea rdi, [rsp + 168]
	mov rsi, r12
	call qword ptr [rip + core::fmt::num::<impl core::fmt::Display for u128>::fmt@GOTPCREL]
.Ltmp1662:
.Ltmp2416:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/result.rs : 1033
		match self {
	test al, al
.Ltmp2417:
	jne .LBB49_591
.Ltmp2418:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/string.rs : 1551
		self.vec.len()
	mov r14, qword ptr [rsp + 240]
.Ltmp2419:
		// ./src/main.rs : 111
		if br.len() > 9 {
	cmp r14, 10
	jb .LBB49_253
.Ltmp2420:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/string.rs : 2329
		unsafe { str::from_utf8_unchecked(&self.vec) }
	mov rbp, qword ptr [rsp + 224]
.Ltmp2421:
		// ./src/main.rs : 112
		println!("Benchmark results: {}.{}", br.chars().take(br.len()-9).collect::<String>(), br.chars().skip(br.len()-9).collect::<String>());
	lea rbx, [r14 - 9]
.Ltmp2422:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/vec/mod.rs : 425
		Vec { buf: RawVec::NEW, len: 0 }
	xorpd xmm0, xmm0
	lea rax, [rsp + 152]
	movupd xmmword ptr [rax], xmm0
.Ltmp2423:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/string.rs : 383
		String { vec: Vec::new() }
	mov qword ptr [rsp + 144], 1
.Ltmp2424:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/iter.rs : 58
		((len + 3) / 4, Some(len))
	lea rdx, [r14 + 3]
	shr rdx, 2
.Ltmp2425:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/cmp.rs : 1214
		match compare(&v1, &v2) {
	cmp rdx, rbx
	cmova rdx, rbx
.Ltmp2426:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/raw_vec.rs : 361
		additional > self.capacity().wrapping_sub(len)
	test rdx, rdx
.Ltmp2427:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/raw_vec.rs : 288
		if self.needs_to_grow(len, additional) {
	je .LBB49_212
.Ltmp2428:
.Ltmp1667:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/raw_vec.rs : 289
		do_reserve_and_handle(self, len, additional);
	lea rdi, [rsp + 144]
	xor esi, esi
	call alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
.Ltmp2429:
.Ltmp1668:
.LBB49_212:
	add r14, rbp
.Ltmp2430:
	.p2align	4, 0x90
.LBB49_213:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/slice/iter/macros.rs : 146
		if is_empty!(self) {
	cmp rbp, r14
	je .LBB49_224
.Ltmp2431:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 38
		let x = *bytes.next()?;
	movzx esi, byte ptr [rbp]
.Ltmp2432:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 39
		if x < 128 {
	test sil, sil
	js .LBB49_216
.Ltmp2433:
	add rbp, 1
.Ltmp2434:
	jmp .LBB49_222
.Ltmp2435:
	.p2align	4, 0x90
.LBB49_216:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 12
		(byte & (0x7F >> width)) as u32
	mov eax, esi
	and eax, 31
.Ltmp2436:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 18
		(ch << 6) | (byte & CONT_MASK) as u32
	movzx edx, byte ptr [rbp + 1]
.Ltmp2437:
	and edx, 63
.Ltmp2438:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 51
		if x >= 0xE0 {
	cmp sil, -33
	jbe .LBB49_220
.Ltmp2439:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 18
		(ch << 6) | (byte & CONT_MASK) as u32
	movzx ecx, byte ptr [rbp + 2]
.Ltmp2440:
	shl edx, 6
.Ltmp2441:
	and ecx, 63
	or ecx, edx
.Ltmp2442:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 59
		if x >= 0xF0 {
	cmp sil, -16
	jb .LBB49_221
.Ltmp2443:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 18
		(ch << 6) | (byte & CONT_MASK) as u32
	movzx esi, byte ptr [rbp + 3]
.Ltmp2444:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 65
		ch = (init & 7) << 18 | utf8_acc_cont_byte(y_z, w);
	and eax, 7
.Ltmp2445:
	shl eax, 18
.Ltmp2446:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 18
		(ch << 6) | (byte & CONT_MASK) as u32
	shl ecx, 6
.Ltmp2447:
	and esi, 63
	or esi, ecx
.Ltmp2448:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 65
		ch = (init & 7) << 18 | utf8_acc_cont_byte(y_z, w);
	or esi, eax
.Ltmp2449:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/iter/traits/iterator.rs : 2185
		while let Some(x) = self.next() {
	cmp esi, 1114112
	je .LBB49_224
.Ltmp2450:
	add rbp, 4
.Ltmp2451:
	jmp .LBB49_222
.Ltmp2452:
.LBB49_220:
	add rbp, 2
.Ltmp2453:
	shl eax, 6
	or eax, edx
	mov esi, eax
	jmp .LBB49_222
.Ltmp2454:
.LBB49_221:
	add rbp, 3
.Ltmp2455:
	shl eax, 12
	or ecx, eax
	mov esi, ecx
.Ltmp2456:
	.p2align	4, 0x90
.LBB49_222:
.Ltmp1670:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/string.rs : 1955
		iterator.for_each(move |c| self.push(c));
	lea rdi, [rsp + 144]
	call alloc::string::String::push
.Ltmp2457:
.Ltmp1671:
	add rbx, -1
.Ltmp2458:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/iter/traits/iterator.rs : 2186
		accum = f(accum, x)?;
	jne .LBB49_213
.Ltmp2459:
.LBB49_224:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/string.rs : 2329
		unsafe { str::from_utf8_unchecked(&self.vec) }
	mov rbx, qword ptr [rsp + 224]
	mov rbp, qword ptr [rsp + 240]
.Ltmp2460:
		// ./src/main.rs : 112
		println!("Benchmark results: {}.{}", br.chars().take(br.len()-9).collect::<String>(), br.chars().skip(br.len()-9).collect::<String>());
	lea r15, [rbp - 9]
.Ltmp2461:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/vec/mod.rs : 425
		Vec { buf: RawVec::NEW, len: 0 }
	xorpd xmm0, xmm0
	lea rax, [rsp + 128]
	movupd xmmword ptr [rax], xmm0
.Ltmp2462:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/string.rs : 383
		String { vec: Vec::new() }
	mov qword ptr [rsp + 120], 1
.Ltmp2463:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/iter.rs : 58
		((len + 3) / 4, Some(len))
	lea rdx, [rbp + 3]
	shr rdx, 2
.Ltmp2464:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/raw_vec.rs : 361
		additional > self.capacity().wrapping_sub(len)
	sub rdx, r15
.Ltmp2465:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/raw_vec.rs : 288
		if self.needs_to_grow(len, additional) {
	jbe .LBB49_226
.Ltmp2466:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/num/uint_macros.rs : 1092
		intrinsics::saturating_sub(self, rhs)
	mov eax, 0
	cmovb rdx, rax
.Ltmp2467:
.Ltmp1673:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/raw_vec.rs : 289
		do_reserve_and_handle(self, len, additional);
	mov rdi, r13
	xor esi, esi
	call alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
.Ltmp2468:
.Ltmp1674:
.LBB49_226:
	lea r14, [rbx + rbp]
.Ltmp2469:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/iter/adapters/skip.rs : 109
		if self.n > 0 {
	test r15, r15
	je .LBB49_545
.Ltmp2470:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/cmp.rs : 1396
		fn lt(&self, other: &$t) -> bool { (*self) < (*other) }
	add rbp, -10
.Ltmp2471:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/iter/range.rs : 621
		if self.start < self.end {
	jne .LBB49_233
.Ltmp2472:
.LBB49_228:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/slice/iter/macros.rs : 146
		if is_empty!(self) {
	cmp rbx, r14
	je .LBB49_287
.Ltmp2473:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 38
		let x = *bytes.next()?;
	movzx eax, byte ptr [rbx]
.Ltmp2474:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 39
		if x < 128 {
	test al, al
	js .LBB49_284
.Ltmp2475:
	add rbx, 1
.Ltmp2476:
	jmp .LBB49_545
.Ltmp2477:
.LBB49_231:
	add rbx, 1
.Ltmp2478:
.LBB49_232:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/cmp.rs : 1396
		fn lt(&self, other: &$t) -> bool { (*self) < (*other) }
	add rbp, -1
.Ltmp2479:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/iter/range.rs : 621
		if self.start < self.end {
	je .LBB49_228
.Ltmp2480:
.LBB49_233:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/slice/iter/macros.rs : 146
		if is_empty!(self) {
	cmp rbx, r14
	je .LBB49_287
.Ltmp2481:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 38
		let x = *bytes.next()?;
	movzx eax, byte ptr [rbx]
.Ltmp2482:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 39
		if x < 128 {
	test al, al
	jns .LBB49_231
.Ltmp2483:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 51
		if x >= 0xE0 {
	cmp al, -32
.Ltmp2484:
	jb .LBB49_239
.Ltmp2485:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 59
		if x >= 0xF0 {
	cmp al, -16
	jb .LBB49_240
.Ltmp2486:
	movzx ecx, byte ptr [rbx + 1]
.Ltmp2487:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 18
		(ch << 6) | (byte & CONT_MASK) as u32
	and ecx, 63
.Ltmp2488:
	movzx edx, byte ptr [rbx + 2]
.Ltmp2489:
	and edx, 63
.Ltmp2490:
	movzx esi, byte ptr [rbx + 3]
.Ltmp2491:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 65
		ch = (init & 7) << 18 | utf8_acc_cont_byte(y_z, w);
	and eax, 7
.Ltmp2492:
	shl eax, 18
.Ltmp2493:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 18
		(ch << 6) | (byte & CONT_MASK) as u32
	shl ecx, 12
	shl edx, 6
	or edx, ecx
	and esi, 63
	or esi, edx
.Ltmp2494:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/validations.rs : 65
		ch = (init & 7) << 18 | utf8_acc_cont_byte(y_z, w);
	or esi, eax
.Ltmp2495:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/option.rs : 1042
		match self {
	cmp esi, 1114112
	je .LBB49_287
.Ltmp2496:
	add rbx, 4
	jmp .LBB49_232
.LBB49_239:
	add rbx, 2
	jmp .LBB49_232
.LBB49_240:
	add rbx, 3
	jmp .LBB49_232
.LBB49_241:
	xor r13d, r13d
	mov r15, r14
	jmp .LBB49_22
.LBB49_242:
.Ltmp2497:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/vec/mod.rs : 2439
		unsafe { slice::from_raw_parts(self.as_ptr(), self.len) }
	mov rax, qword ptr [rsp + 264]
.Ltmp2498:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/slice/iter/macros.rs : 146
		if is_empty!(self) {
	test rax, rax
	je .LBB49_436
.Ltmp2499:
	mov rbx, qword ptr [rsp + 248]
	lea rax, [rax + 2*rax]
	lea rbp, [rbx + 8*rax]
.Ltmp2500:
	.p2align	4, 0x90
.LBB49_244:
		// ./src/main.rs : 53
		println!("{} {} {}", t.a, t.b, t.c);
	mov qword ptr [rsp + 16], rbx
	mov rcx, qword ptr [rip + core::fmt::float::<impl core::fmt::Display for f64>::fmt@GOTPCREL]
	mov qword ptr [rsp + 24], rcx
	lea rax, [rbx + 8]
	mov qword ptr [rsp + 32], rax
	mov qword ptr [rsp + 40], rcx
	add rbx, 16
.Ltmp2501:
	mov qword ptr [rsp + 48], rbx
	mov qword ptr [rsp + 56], rcx
.Ltmp2502:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/fmt/mod.rs : 391
		Arguments { pieces, fmt: None, args }
	lea rax, [rip + .L__unnamed_18]
	mov qword ptr [rsp + 168], rax
	mov qword ptr [rsp + 176], 4
	mov qword ptr [rsp + 184], 0
	mov qword ptr [rsp + 200], r12
	mov qword ptr [rsp + 208], 3
.Ltmp2503:
.Ltmp1685:
		// ./src/main.rs : 53
		println!("{} {} {}", t.a, t.b, t.c);
	lea rdi, [rsp + 168]
	call qword ptr [rip + std::io::stdio::_print@GOTPCREL]
.Ltmp2504:
.Ltmp1686:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/slice/iter/macros.rs : 146
		if is_empty!(self) {
	add rbx, 8
	cmp rbp, rbx
	jne .LBB49_244
	jmp .LBB49_436
.Ltmp2505:
.LBB49_246:
		// ./src/main.rs : 94
		if cmds.len() != 3 { panic!("Invalid operations: {:?}", cmds); }
	cmp rsi, 3
	jne .LBB49_592
.Ltmp2506:
		// ./src/main.rs : 95
		let n: usize = cmds[1].parse().expect("Invalid number"); // format!("Invalid number {}", cmds[1]));
	mov rsi, qword ptr [rbx + 16]
	mov rdx, qword ptr [rbx + 24]
.Ltmp2507:
.Ltmp1728:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/str/mod.rs : 2345
		FromStr::from_str(self)
	mov rdi, r12
	call qword ptr [rip + core::num::<impl core::str::traits::FromStr for usize>::from_str@GOTPCREL]
.Ltmp2508:
.Ltmp1729:
	mov rbp, qword ptr [rip + std::collections::hash::map::RandomState::new::KEYS::__getit::__KEY@GOTTPOFF]
.Ltmp2509:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/result.rs : 1033
		match self {
	cmp byte ptr [rsp + 16], 0
.Ltmp2510:
	jne .LBB49_593
.Ltmp2511:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/result.rs : 1034
		Ok(t) => t,
	mov rax, qword ptr [rsp + 24]
.Ltmp2512:
		// ./src/main.rs : 95
		let n: usize = cmds[1].parse().expect("Invalid number"); // format!("Invalid number {}", cmds[1]));
	mov qword ptr [rsp + 280], rax
.Ltmp2513:
		// ./src/main.rs : 96
		let tprob: f64 = cmds[2].parse().expect("Invalid number"); // format!("Invalid number {}", cmds[2]));
	mov rsi, qword ptr [rbx + 32]
	mov rdx, qword ptr [rbx + 40]
.Ltmp1732:
	mov rdi, r12
	call core::str::<impl str>::parse
.Ltmp2514:
.Ltmp1733:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/result.rs : 1033
		match self {
	cmp byte ptr [rsp + 16], 0
.Ltmp2515:
	jne .LBB49_594
.Ltmp2516:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/result.rs : 1034
		Ok(t) => t,
	movsd xmm0, qword ptr [rsp + 24]
.Ltmp2517:
		// ./src/main.rs : 97
		let t: usize = if tprob <= 1.0 { (tprob*(n as f64)) as usize } else { tprob as usize };
	movsd xmm1, qword ptr [rip + .LCPI49_11]
	ucomisd xmm1, xmm0
	jae .LBB49_254
.Ltmp2518:
	cvttsd2si rax, xmm0
	mov rcx, rax
	sar rcx, 63
	movapd xmm1, xmm0
	subsd xmm1, qword ptr [rip + .LCPI49_14]
	cvttsd2si rdx, xmm1
	and rdx, rcx
	or rdx, rax
	ucomisd xmm0, qword ptr [rip + .LCPI49_19]
	mov r15d, 0
	cmovae r15, rdx
	ucomisd xmm0, qword ptr [rip + .LCPI49_15]
	mov rax, -1
	cmova r15, rax
.Ltmp2519:
		// ./src/main.rs : 98
		println!("pop results: {}/{}", populate(&mut buff, n, t), n);
	mov rax, qword ptr [rsp + 280]
	mov qword ptr [rsp], rax
	jmp .LBB49_255
.Ltmp2520:
.LBB49_253:
		// ./src/main.rs : 114
		println!("Benchmark results: {}", br);
	lea rax, [rsp + 224]
	mov qword ptr [rsp + 168], rax
	lea rax, [rip + <alloc::string::String as core::fmt::Display>::fmt]
	mov qword ptr [rsp + 176], rax
.Ltmp2521:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/fmt/mod.rs : 391
		Arguments { pieces, fmt: None, args }
	lea rax, [rip + .L__unnamed_19]
	mov qword ptr [rsp + 16], rax
	mov qword ptr [rsp + 24], 2
	mov qword ptr [rsp + 32], 0
	lea rax, [rsp + 168]
	mov qword ptr [rsp + 48], rax
	mov qword ptr [rsp + 56], 1
.Ltmp2522:
.Ltmp1664:
		// ./src/main.rs : 114
		println!("Benchmark results: {}", br);
	mov rdi, r12
	call qword ptr [rip + std::io::stdio::_print@GOTPCREL]
.Ltmp1665:
	jmp .LBB49_294
.Ltmp2523:
.LBB49_254:
		// ./src/main.rs : 97
		let t: usize = if tprob <= 1.0 { (tprob*(n as f64)) as usize } else { tprob as usize };
	mov rcx, qword ptr [rsp + 280]
.Ltmp2524:
	mov rax, rcx
	mov qword ptr [rsp], rcx
.Ltmp2525:
	movq xmm1, rcx
	punpckldq xmm1, xmmword ptr [rip + .LCPI49_12]
	subpd xmm1, xmmword ptr [rip + .LCPI49_13]
	movapd xmm2, xmm1
	unpckhpd xmm2, xmm1
	addsd xmm2, xmm1
	mulsd xmm0, xmm2
.Ltmp2526:
	cvttsd2si rax, xmm0
	mov rcx, rax
	sar rcx, 63
	movapd xmm1, xmm0
	subsd xmm1, qword ptr [rip + .LCPI49_14]
	cvttsd2si rdx, xmm1
	and rdx, rcx
	or rdx, rax
	ucomisd xmm0, qword ptr [rip + .LCPI49_19]
	mov r15d, 0
	cmovae r15, rdx
	ucomisd xmm0, qword ptr [rip + .LCPI49_15]
	mov rax, -1
	cmova r15, rax
.Ltmp2527:
.LBB49_255:
.Ltmp1736:
		// ./src/main.rs : 13
		let mut rng = thread_rng();
	call qword ptr [rip + rand::rngs::thread::thread_rng@GOTPCREL]
.Ltmp1737:
.Ltmp2528:
	mov r14, rax
.Ltmp2529:
	mov qword ptr [rsp + 272], rax
.Ltmp2530:
	mov rbx, qword ptr [rsp]
.Ltmp2531:
	test rbx, rbx
.Ltmp2532:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/alloc.rs : 167
		match layout.size() {
	je .LBB49_262
.Ltmp2533:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/alloc.rs : 160
		unsafe { __rust_alloc_zeroed(layout.size(), layout.align()) }
	mov esi, 1
	mov rdi, rbx
	call qword ptr [rip + __rust_alloc_zeroed@GOTPCREL]
.Ltmp2534:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/raw_vec.rs : 188
		let ptr = match result {
	test rax, rax
	je .LBB49_596
.Ltmp2535:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/vec/spec_from_elem.rs : 54
		return Vec { buf: RawVec::with_capacity_zeroed_in(n, alloc), len: n };
	mov qword ptr [rsp + 224], rax
	mov qword ptr [rsp + 232], rbx
	mov qword ptr [rsp + 240], rbx
.Ltmp2536:
		// ~/.cargo/registry/src/github.com-1ecc6299db9ec823/rand-0.8.5/src/seq/index.rs : 224
		if amount > length {
	cmp r15, rbx
	ja .LBB49_595
.Ltmp2537:
	mov rdx, qword ptr [rsp]
		// ~/.cargo/registry/src/github.com-1ecc6299db9ec823/rand-0.8.5/src/seq/index.rs : 227
		if length > (::core::u32::MAX as usize) {
	mov rax, rdx
	shr rax, 32
	je .LBB49_265
.Ltmp2538:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/option.rs : 627
		match *self {
	cmp qword ptr fs:[rbp], 0
.Ltmp2539:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/std/src/thread/local.rs : 965
		match self.inner.get() {
	je .LBB49_271
.Ltmp2540:
	mov rax, qword ptr fs:[0]
	add rax, rbp
	add rax, 8
	jmp .LBB49_273
.Ltmp2541:
.LBB49_262:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/vec/spec_from_elem.rs : 54
		return Vec { buf: RawVec::with_capacity_zeroed_in(n, alloc), len: n };
	mov qword ptr [rsp + 224], 1
	xorpd xmm0, xmm0
	lea rax, [rsp + 232]
	movupd xmmword ptr [rax], xmm0
.Ltmp2542:
		// ~/.cargo/registry/src/github.com-1ecc6299db9ec823/rand-0.8.5/src/seq/index.rs : 224
		if amount > length {
	test r15, r15
	jne .LBB49_595
.Ltmp2543:
.LBB49_263:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/alloc/src/vec/mod.rs : 613
		Vec { buf: RawVec::with_capacity_in(capacity, alloc), len: 0 }
	mov qword ptr [rsp + 16], 4
	xorpd xmm0, xmm0
	lea rax, [rsp + 32]
	movupd xmmword ptr [rax - 8], xmm0
.Ltmp2544:
.LBB49_264:
		// ~/.cargo/registry/src/github.com-1ecc6299db9ec823/rand-0.8.5/src/seq/index.rs : 444
		IndexVec::from(indices)
	mov rax, qword ptr [rsp + 32]
	lea rcx, [rsp + 184]
	mov qword ptr [rcx + 8], rax
	mov rax, qword ptr [rsp + 16]
	mov qword ptr [rcx - 8], rax
	mov rax, qword ptr [rsp + 24]
	mov qword ptr [rcx], rax
	jmp .LBB49_380
.Ltmp2545:
.LBB49_265:
	xor eax, eax
	cmp edx, 500000
	setae al
	mov ecx, r15d
		// ~/.cargo/registry/src/github.com-1ecc6299db9ec823/rand-0.8.5/src/seq/index.rs : 239
		if amount < 163 {
	cmp r15d, 163
	jae .LBB49_269
.Ltmp2546:
		// ~/.cargo/registry/src/github.com-1ecc6299db9ec823/rand-0.8.5/src/seq/index.rs : 245
		if amount > 11 && (length as f32) < (C[1][j] + m4) * amount_fp {
	cmp r15d, 12
	jb .LBB49_297
.Ltmp2547:
	xorps xmm0, xmm0
	cvtsi2ss xmm0, rcx
.Ltmp2548:
	mov rdx, qword ptr [rsp]
.Ltmp2549:
	mov ecx, edx
	xorps xmm1, xmm1
	cvtsi2ss xmm1, rcx
	lea rcx, [rip + .L__unnamed_20]
	movss xmm2, dword ptr [rcx + 4*rax]
.Ltmp2550:
		// ~/.cargo/registry/src/github.com-1ecc6299db9ec823/rand-0.8.5/src/seq/index.rs : 243
		let m4 = C[0][j] * amount_fp;
	mulss xmm2, xmm0
.Ltmp2551:
		// ~/.cargo/registry/src/github.com-1ecc6299db9ec823/rand-0.8.5/src/seq/index.rs : 245
		if amount > 11 && (length as f32) < (C[1][j] + m4) * amount_fp {
	addss xmm2, dword ptr [rcx + 4*rax + 8]
	mulss xmm2, xmm0
	ucomiss xmm2, xmm1
	jbe .LBB49_445
.Ltmp2552:
.Ltmp1801:
		// ~/.cargo/registry/src/github.com-1ecc6299db9ec823/rand-0.8.5/src/seq/index.rs : 246
		sample_inplace(rng, length, amount)
	lea rdi, [rsp + 168]
	lea rsi, [rsp + 272]
	mov ecx, r15d
	call rand::seq::index::sample_inplace
.Ltmp2553:
.Ltmp1802:
	jmp .LBB49_371
.Ltmp2554:
.LBB49_269:
		// ~/.cargo/registry/src/github.com-1ecc6299db9ec823/rand-0.8.5/src/seq/index.rs : 253
		if (length as f32) < C[j] * (amount as f32) {
	mov esi, edx
	xorps xmm0, xmm0
	cvtsi2ss xmm0, rsi
	xorps xmm1, xmm1
	cvtsi2ss xmm1, rcx
	lea rcx, [rip + .L__unnamed_21]
	mulss xmm1, dword ptr [rcx + 4*rax]
	ucomiss xmm1, xmm0
	jbe .LBB49_298
.Ltmp2555:
.Ltmp1772:
		// ~/.cargo/registry/src/github.com-1ecc6299db9ec823/rand-0.8.5/src/seq/index.rs : 254
		sample_inplace(rng, length, amount)
	lea rdi, [rsp + 168]
	lea rsi, [rsp + 272]
	mov ecx, r15d
	call rand::seq::index::sample_inplace
.Ltmp1773:
	jmp .LBB49_371
.Ltmp2556:
.LBB49_271:
.Ltmp1803:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/std/src/thread/local.rs : 967
		None => self.try_initialize(init),
	xor edi, edi
	call std::thread::local::fast::Key<T>::try_initialize
.Ltmp2557:
.Ltmp1804:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/std/src/thread/local.rs : 441
		let thread_local = (self.inner)(None).ok_or(AccessError)?;
	test rax, rax
	je .LBB49_601
.Ltmp2558:
.LBB49_273:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/std/src/collections/hash/map.rs : 2956
		let (k0, k1) = keys.get();
	movdqu xmm0, xmmword ptr [rax]
.Ltmp2559:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/num/uint_macros.rs : 1184
		intrinsics::wrapping_add(self, rhs)
	movq rcx, xmm0
	add rcx, 1
.Ltmp2560:
		// /rustc/fe5b13d681f25ee6474be29d748c65adcd91f69e/library/core/src/ptr/mod.rs : 1177
		copy_nonoverlapping(&src as *const T, dst, 1);
	mov qword ptr [rax], rcx
.Ltmp2561:
