X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2036" "Sunday" "25" "July" "2021" "09:21:33" "-0000" "Jonas Dellinger" "jdellinger@mail2tor.com" nil "46" "[oss-security] CVE-2020-28020: Integer overflow in Exim that can lead to RCE: Some questions to the Qualys researchers who designed the exploit" nil nil nil "7" nil nil (number mark "U       jdellinger@m Jul 25   46/2036  " thread-indent "\"[oss-security] CVE-2020-28020: Integer overflow in Exim that can lead to RCE: Some questions to the Qualys researchers who designed the exploit\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-28020: Integer overflow in Exim that can lead to RCE: Some questions to the Qualys researchers who designed the exploit" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4062 invoked by uid 550); 25 Jul 2021 10:53:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13651 invoked from network); 25 Jul 2021 09:21:49 -0000
Message-ID: <8210b8faa036552aaa23c2b1b26b2a32.squirrel@_>
Date: Sun, 25 Jul 2021 09:21:33 -0000
From: "Jonas Dellinger" <jdellinger@mail2tor.com>
To: oss-security@lists.openwall.com
User-Agent: SquirrelMail/1.4.23 [SVN]
MIME-Version: 1.0
Content-Type: text/plain;charset=iso-8859-1
Content-Transfer-Encoding: 8bit
X-Priority: 3 (Normal)
Importance: Normal
Subject: [oss-security] CVE-2020-28020: Integer overflow in Exim that can lead to RCE: Some
 questions to the Qualys researchers who designed the exploit

Hi all,

I've been reading through the 21Nails Exim security advisory [1] and
one vulnerability particularly interested me: CVE-2020-28020, an integer
overflow in receive_msg() that can lead to RCE when sending crafted
emails. I'm having a hard time fully understanding the exploit outlined
by the Qualys researchers and have a couple of questions to them (quoting
the advisory):

> we first allocate a 1GB mmap block (mblock1) by sending a mail that
> contains a 256MB header of bare '\n' characters; the next member of
> mblock1's storeblock structure initially points to a heap block
> (hblock, which immediately follows data that we control);

What data precedes hblock and how is it controlled by the attacker?

> we allocate a third 1GB mmap block (mblock3) by sending a mail that
> contains a 512MB header; this overflows the integer header_size, and
> forward-overflows mblock3 (Digression 1a), into mblock2 and mblock1:
> we overwrite mblock2's next pointer with NULL (to avoid a crash in
> store_release() at line 1788) and we partially overwrite mblock1's
> next pointer (with a single null byte).

How do you remotely make allocations that overwrite the desired pointers?
Is my understanding correct that you overwrite the first byte of mblock1's
next pointer with zero? How does that ensure that it points to the "fake
storeblock" structure?

> 3/ Information disclosure:
>
> - First, we send an EHLO command that allocates a large string in raw
> malloc() memory.
>
> - Second, we send an invalid RCPT TO command that allocates a small
> string in POOL_MAIN memory (an error message); this small POOL_MAIN
> string overwrites the beginning of the large malloc() string.

Why does the POOL_MAIN allocation collide with the raw malloc() one?
I understand that you make the entire heap look like free POOL_MAIN
memory using the "fake storeblock" structure, but how come that the
small POOL_MAIN string lands exactly on the large raw malloc() string?

Thanks a lot!

[1] https://www.qualys.com/2021/05/04/21nails/21nails.txt

