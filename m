Received: (qmail 22491 invoked by uid 550); 2 Mar 2026 09:54:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22467 invoked from network); 2 Mar 2026 09:54:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772445248;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=VmJszAJmt8PB8Iqsv1Hdz4lqPlxMXPhFEmOmo34Rwe8=;
	b=Krm5dp2Tk/XbLLdtCzqAu48TQ868ZfLGzBYUOgqoVtcxHni/o3KK97Y6uruaFrcvvSBR6e
	evHhUBSvNSyZdzxT572cGtOeKgzsEjea6inTPIqM1605bFBbS7DCNcxK9rIzL95vqve6E8
	LbutV/t8ZtmIpJt076haMR6JHJpmn2w=
X-MC-Unique: aWt1Mq1KPV257NcpJyCQYw-1
X-Mimecast-MFC-AGG-ID: aWt1Mq1KPV257NcpJyCQYw_1772445243
From: Florian Weimer <fweimer@redhat.com>
To: Demi Marie Obenour <demiobenour@gmail.com>
Cc: oss-security@lists.openwall.com,  Alan Coopersmith
 <alan.coopersmith@oracle.com>
In-Reply-To: <d1bda7f6-2762-4f2e-ac36-0825f19f2745@gmail.com> (Demi Marie
	Obenour's message of "Sun, 1 Mar 2026 22:56:51 -0500")
References: <a671aebf-fc45-4d06-a1dd-5ed6664aaa3c@oracle.com>
	<lhu1pi6c6y2.fsf@oldenburg.str.redhat.com>
	<d1bda7f6-2762-4f2e-ac36-0825f19f2745@gmail.com>
Date: Mon, 02 Mar 2026 10:53:59 +0100
Message-ID: <lhuseaiftfs.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 1OIiYLcLdZEvxIks59c9AxC7W3wKMXkhctXitEZiEds_1772445243
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [oss-security] OSEC-2026-01 in the OCaml runtime: Buffer
 Over-Read in OCaml Marshal Deserialization

* Demi Marie Obenour:

> On 2/27/26 14:39, Florian Weimer wrote:
>> * Alan Coopersmith:
>> 
>>> https://sympa.inria.fr/sympa/arc/ocsf-ocaml-security-announcements/2026-02/msg00000.html
>>> announces:
>>>> From: Hannes Mehnert <hannes@mehnert.org>
>>>> To: ocsf-ocaml-security-announcements@inria.fr
>>>> Subject: [ocsf-ocaml-security-announcements] OSEC-2026-01 in the OCaml runtime: Buffer Over-Read in OCaml Marshal Deserialization
>>>> Date: Tue, 17 Feb 2026 15:16:54 +0100
>>>> Dear everyone,
>>>> it is my pleasure to announce the first security announcement of
>>>> this year,
>>>> and the first on this mailing list.
>>>> It should any moment now also appear at
>>>> https://osv.dev/list?q=OSEC-2026-01
>>>> Human link:
>>>> https://github.com/ocaml/security-advisories/tree/main/advisories/2026/OSEC-2026-01.md
>> 
>> Surprised to read this.  I think this comment from 2018 is still
>> appropriate:
>> 
>> | Marshal should not used in contexts where an attacker can control the
>> | data. I don't believe it is, at least in any project I'm aware of, and
>> | if it were, it's unlikely that those project perform enough check on
>> | the result of Marshal to make the use safe anyway.
>> 
>> <https://github.com/ocaml/ocaml/issues/7765#issuecomment-473076288>
>> 
>> The demarshaller does not have access to type information from the
>> program, so it has the ability to construct an arbitrary object graph.
>
> That is indeed true.  However, unlike in many other languages, this
> does not directly allow arbitrary code execution.

Not really.

This code

type x = A of int | B of int | C of int | D of int | E of int
let f x fA fB fC fD fE =
  match x with
  | A a -> fA a
  | B b -> fB b
  | C c -> fC c
  | D d -> fD d
  | E e -> fE e

gets compiled to:

0000000000000000 <camlBlah.f_5>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	49 89 c0             	mov    %rax,%r8
   7:	49 89 d1             	mov    %rdx,%r9
   a:	4d 3b 3e             	cmp    (%r14),%r15
   d:	76 51                	jbe    60 <camlBlah.f_5+0x60>
   f:	49 0f b6 40 f8       	movzbq -0x8(%r8),%rax
  14:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 1b <camlBlah.f_5+0x1b>
			17: R_X86_64_PC32	.rodata-0x4
  1b:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  1f:	48 01 c2             	add    %rax,%rdx
  22:	ff e2                	jmp    *%rdx
  24:	49 8b 00             	mov    (%r8),%rax
  27:	48 8b 3b             	mov    (%rbx),%rdi
  2a:	5d                   	pop    %rbp
  2b:	ff e7                	jmp    *%rdi
  2d:	0f 1f 00             	nopl   (%rax)
  30:	49 8b 00             	mov    (%r8),%rax
  33:	48 8b 37             	mov    (%rdi),%rsi
  36:	48 89 fb             	mov    %rdi,%rbx
  39:	5d                   	pop    %rbp
  3a:	ff e6                	jmp    *%rsi
  3c:	49 8b 00             	mov    (%r8),%rax
  3f:	48 8b 3e             	mov    (%rsi),%rdi
  42:	48 89 f3             	mov    %rsi,%rbx
  45:	5d                   	pop    %rbp
  46:	ff e7                	jmp    *%rdi
  48:	49 8b 00             	mov    (%r8),%rax
  4b:	49 8b 39             	mov    (%r9),%rdi
  4e:	4c 89 cb             	mov    %r9,%rbx
  51:	5d                   	pop    %rbp
  52:	ff e7                	jmp    *%rdi
  54:	49 8b 00             	mov    (%r8),%rax
  57:	48 8b 39             	mov    (%rcx),%rdi
  5a:	48 89 cb             	mov    %rcx,%rbx
  5d:	5d                   	pop    %rbp
  5e:	ff e7                	jmp    *%rdi
  60:	e8 00 00 00 00       	call   65 <camlBlah.f_5+0x65>
			61: R_X86_64_PLT32	caml_call_gc-0x4
  65:	eb a8                	jmp    f <camlBlah.f_5+0xf>
  67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  6e:	00 00 

Add offset 0x1b, there's the tag load, and this tag is used to index a
jump table without a bounds check.

Admittedly, This does not give full control over program execution
directly.  One would have to search for a suitable gadget.  There are
likely better ways to exploit unsafe demarshalling, this is just the
first approach I could think of.

Thanks,
Florian

