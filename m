Received: (qmail 24402 invoked by uid 550); 29 Dec 2025 17:11:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13520 invoked from network); 29 Dec 2025 16:58:16 -0000
Message-ID: <d892df77-a488-4a51-af35-697897e3984e@gpg.fail>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gpg.fail; s=key1;
	t=1767027477;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+B04NcR1FqpW8LYRA6ctKGh9zESoiMV1GmrLOZegrms=;
	b=j/jyWm4Wc/HPIazrogwI4CTgcomHrhhIPupIHWAsuWgwFDjWoQFfRSQrnsh7ZrR2IyYd9o
	weG3sy9fwKtJXH95zXbmCUlD6ZNP29GL1NTiY/acTWhlebAJCTCt7G5uHy9/ZNhBzeWEPW
	xQA28Un1RCS7CrEFCbDwpO996JG23zy9iLR8E45SQCoAubpavPr7Wlgr4euZMnhOT3Hb5d
	NML8dQCvmBS+4+apxYrZrZBHSU+oApCZx6AUOn3ilGER7thz1smiX7VMZ95h7PT+bIlCsn
	K42JyIRAUrd5NhLhnChnJrVcMgrfdtDEvV/S1o0bS2bWW7RzA3FdBfQUAzSEEw==
Date: Mon, 29 Dec 2025 17:57:44 +0100
MIME-Version: 1.0
To: jcb62281@gmail.com, oss-security@lists.openwall.com,
 Solar Designer <solar@openwall.com>
References: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
 <20251228042744.GA629@openwall.com>
 <0009d6cc-143e-41e6-b240-eb526a9cb306@gmail.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Lexi Groves (49016)" <contact@gpg.fail>
In-Reply-To: <0009d6cc-143e-41e6-b240-eb526a9cb306@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
Subject: Re: [oss-security] Many vulnerabilities in GnuPG
X-Spam: Yes

Hi! Thanks for the comment. Some clarifications from us:

 > Overall, I have one very major point of disagreement here: the 
OpenPGP clearsign format is useful precisely because it enables the 
signed message to be easily viewed with other tools, thus complicating 
attacks and making large-scale attacks much more likely to be detected.  
(It only takes one user who looks at a clearsigned digest list with 
less(1) and sees a bunch of control sequences to raise an alarm.)

This affects two of the vulnerabilities, and while we do agree that we 
focused exploitation on naive viewers, one can also leave out the 
"creative formatting"; especially the `NotDashEscaped:` header can also 
be used without any control sequences. These two specific attacks do 
have their limitations, but are still worth reporting.

 > Item 1:  Multiple Plaintext Attack on Detached PGP Signatures in GnuPG
 >
 > Exploitation requires a very odd use of signatures.  Bob knows that 
he has a detached signature, and ordinarily a detached signature is 
simply used to verify the signed file, after which the signed file is 
used directly.

This was found especially in response to the clearsig advice being to 
use an option to print what was *actually* verified, e.g. `--decrypt`, 
to avoid plaintext confusion attacks. This fools exactly that mechanism 
that was used to prevent exploitation in the previous attacks.

 > This is also the first time I have seen --decrypt suggested for 
reading a signed message; does this also work if the message is encrypted?

Yes. We found this advice in [The GNU Privacy Handbook, Chapter 1. 
Getting Started, Making and verifying 
signatures](https://www.gnupg.org/gph/en/manual/x135.html):

 > > Given a signed document, you can either check the signature or 
check the signature and recover the original document. To check the 
signature use the --verify option. To verify the signature and extract 
the document use the --decrypt option. The signed document to verify and 
recover is input and the recovered document is output.
 > >
 > > ```
 > > blake% gpg --output doc --decrypt doc.sig
 > > gpg: Signature made Fri Jun  4 12:02:38 1999 CDT using DSA key ID 
BB7576AC
 > > gpg: Good signature from "Alice (Judge) <alice@cyb.org>"
 > > ```

We assumed that the manual was the source of truth and assumed that 
using `--decrypt` was the standard way to do this; we may have been 
biased here, because apparently the common knowledge about this 
(according to some other documentation that we did not see) was using 
`--output/-o`. However, due to the nature of the attack, setting the 
wrong output file while hashing the correct file, `--output` works the 
same way:

```
$ gpg --output x --verify msg.txt.sig msg.txt
gpg: Signature made Mon 29 Dec 2025 02:59:11 PM CET
gpg:                using EDDSA key EE6EADB4CBB063887A3BE2B413AEBEC571BA1447
gpg: Good signature from "39c3 demo <demo@gpg.fail>" [ultimate]
$ cat msg.txt
asdf
$ cat x
Malicious
```

 > Mallory can be assumed to have Bob's public key and could therefore 
generate a second encrypted message to Bob if Alice's message was signed 
and encrypted.  There would be an interesting indicator of compromise:  
an abnormally-large detached signature.

Yes. That is indeed one way to spot this attack in suboptimal 
conditions, but when a small signature is needed (e.g. over a digest of 
an ISO), and with the varying lengths between signatures like Ed25519 
and RSA4k+, this can be exploited realistically.

 > This exposes *another* bug in GPG:  documentation says that --decrypt 
will reject an unencrypted input, yet the PoC involves using it with 
exactly that.

This is actually news to us as well, but yes, apparently `--decrypt` is 
not supposed to do that. Please assume that we wanted a "print what was 
verified" option, and our attacks that (ab)use `--decrypt` work with 
`--output -` the same way.

 > Item 2:  GnuPG Accepts Path Separators and Path Traversals in Literal 
Data "Filename" Field
 >
 > While this is a potentially serious bug, as it enables an attacker to 
potentially overwrite any file if the attacker can guess the file name, 
it also relies more on a social-engineering attack.  While a naive user 
might use the suggested command, a more-experienced user should 
immediately smell a rat.

Yes. This probably wouldn't fool a hardcore cypherpunk, but to be 
honest, it'd get me. Reaper compared this to a clickjacking attack in 
web exploitation, and we completely agree with this classification: this 
is an exploit chain that abuses the naivety of the user to trigger a 
*technical* issue.  Nevertheless, I believe that software should always 
do its best to protect against human error.

 > The PoC uses ANSI escapes to cover up (erase, move left) the hash 
mark that makes the fake message viable as a shell script, the actual 
payload command (set as invisible text), and the prompt from GPG about 
writing the output file (which appears to be sent to the window title).  
I am uncertain how the user is supposed to see the next prompt, as the 
invisible text mode does not appear to be reset.

This was a slight miscommunication; this does indeed swallow the next 
bash prompt. Assuming a user doesn't then recover their terminal but 
just restarts the shell, it spawns a new Bash process, which sources the 
newly written file. This was just one example of exploitation; there 
probably is a way to turn an arbitrary write into direct execution on 
most systems without relying on bash.

 > Item 3:  Cleartext Signature Plaintext Truncated for Hash Calculation
 >
 > GPG uses in-band signaling if a line is too long.  Comments in the 
GPG sources acknowledge that this is a hack.
 >
 > The exploit does have a problem in that it reports an error about 
"invalid armor" due to a line being too long.  Also, while it works if 
the message is fed directly to a terminal, I suspect that reading the 
message with less(1) would show interesting anomalies.

There would indeed be an anomaly; there have to be 30,000 bytes of 
*something*. An experienced user might suspect something is wrong, but 
this is a serious issue regardless.

 > Item 4:  Encrypted message malleability checks are incorrectly 
enforced causing plaintext recovery attacks
 >
 > This item admits not actually having a complete attack, and I am 
unsure how exactly this leads to recovering plaintext, even if Bob 
cooperates.

While we have not chained all bugs together, we have gotten outputs like 
[this](https://keys.openpgp.org/search?q=exfil@gpg.fail) on production 
builds of GnuPG 2.4.8 that contain the plaintext of an encrypted file 
(viewed with Sequoia to highlight the issue):

```
$ gpg --export exfil@gpg.fail | sq packet dump

Public-Key Packet, new CTB, 2 header bytes + 51 bytes
     Curve: Ed25519
     Fingerprint: 06993EC337C276ECFD8C598AB613D42DB68D9E1D
     [...]

Signature Packet, new CTB, 3 header bytes + 371 bytes
     Type: DirectKey
     Unhashed area:   Here's the zlib header! ↓
       Preferred keyserver: 
"http://localhost:9999/upload-key?x=�\u{14}G\"\u{16}��>�\u{15}fd�x\u{15}D\u{15}D�\u{2}x�\u{1}H\0���Fb\0iHP
                             ��#�5 That is plaintext 
w�W���w\u{605}���r\u{1c}�&\u{f}ǟ�\r�^\u{e}��D}�,/�n_���{�Jv�!��\u{14}�\t\u{7}��;�jB2D�!6�a��\"�"
```

 > (User willingness to sign a random key received by email without 
verifying it breaks Web-of-Trust badly.)

The attack does require some user interaction, and a plausible one is 
always a bit of a challenge; the attack scenario we were thinking of was 
telling a victim to decrypt and upload a key to a public keyserver 
*without signing it*, just to publish it (for example to circumvent 
censorship). We got this slightly wrong in the writeup, apologies for 
that mistake. We have a correct but brief explanation in the talk (at 
gpg.fail) as well.

 > If there is a bug here, it seems to be an out-of-bounds read in GPG's 
Inflate implementation:  the decrypted ciphertext is in the memory 
buffer prior to the altered packets and thus prior to the beginning of 
the compressed stream.
 >
 > I am unsure how the garbled comment packet is produced, unless it is 
the result of interpreting the decrypted data as a compressed stream and 
"inflating" it.

This is *not* a memory safety issue, and explaining the bug a bit 
further in-depth hopefully clears this up. Excuse my potentially 
incorrect language, I am only a hobby cryptographer for fun, but I will 
try to break this down.

PGP uses the [Cipher FeedBack/CFB mode of 
operation](https://en.wikipedia.org/wiki/Block_cipher_mode_of_operation#Cipher_feedback_(CFB)). 
Decryption here is the thing that interests us, which works the 
following way:

1. Take the ciphertext of the last block, or when initializing the IV block
2. Encrypt (yes, *en*crypt) the result of 1. with the key
3. XOR the current ciphertext with the result of 2.

A malleability attack, where an attacker tries to manipulate the output 
of this operation, is possible by simply XORing bits into the current 
ciphertext block. This will break the next block, but we can inject data 
into the current block as long as we can guess the plaintext of the 
current block.

This is practically exploitable since GPG defaults to ZLib compression, 
which has a quite predictable header, and since the attack only requires 
guessing 7 bytes from the ZLib header to set up a "trampoline", this is 
practically doable.

Said "trampoline" does the following:

- Since the malleation corrupts the block following it, we need to 
"catch" that error, like a `try/catch` statement; for that we (ab)use 
the PGP comment packet, which is meant for adding comments to PGP packet 
streams and thus ignores all input.
- We also need deflate, specifically because since it does not have a 
header like ZLib, it is short enough to fit in there, and for a trick up 
our sleeve later.

So what we insert via XORing is:

```
       a3 01                                      # PGP Compressed 
packet, algorithm=DEFLATE
             00 NN NN ~N  ~N                      # Deflate store (e.g. 
no compression) block of len=NN
                             d0 NN                # PGP comment packet, 
len=NN
                                   00 00 00 00 00 # garbage till end of 
block
```

This sets us up so our PGP packet stream does not get corrupted.

Here's what you probably missed: The CFB mode is essentially a state 
machine that only knows the last block of ciphertext, the current block 
of ciphertext, and the stateless encryption function. *We can reset this 
state to the initial position* by just putting a block filled with 
zeroes to reset the state, and then *repeat the entire ciphertext*, 
which a correct PGP implementation then decrypts into that comment 
packet. *This is a fundamental issue with CFB, and not a PGP or GPG 
issue*, but we *also* broke the checksum handling of GPG to obfuscate 
malleability attacks; more on this in a bit.

Now that we have our plaintext in the decompression buffer, we abuse 
*another* bug to remove the decryption IOBUF filter to be able to freely 
write our payload. We still have the decompression filter on the stack, 
so we can just write a normal public key packet, and inside the public 
key packet use decompression features to repeat earlier contents of the 
buffer to recover the plaintext in fields like the keyserver field.

PGP implementations, however, are supposed to have protection against 
malleability by checking an embedded hash sum first, as described in 
[RFC9580, Avoiding Ciphertext 
Malleability](https://www.rfc-editor.org/rfc/rfc9580.html#name-avoiding-ciphertext-malleab):

 > > When an OpenPGP implementation discovers that it is decrypting data 
that appears to be malleable, it MUST generate a clear error message 
that indicates the integrity of the message is suspect, it SHOULD NOT 
attempt to parse nor release decrypted data to the user, and it SHOULD 
halt with an error.

GnuPG violates this in the following ways:

- "it SHOULD NOT attempt to parse nor release decrypted data to the user":
GnuPG does not do this due to wanting to adhere to the UNIX philosophy 
by streaming data; they process the entire plaintext, including nested 
parsing, writing, and printing, before the checksum verification. This 
is only a "SHOULD NOT", so this is a difference of opinions, though.

- "it MUST generate a clear error message that indicates the integrity 
of the message is suspect":
This is bypassed by *another* described bug, where by triggering an 
error *before* the checksum is printed, we can change the error message 
from "WARNING: encrypted message has been manipulated!" to a 
harmless-appearing "decryption failed: invalid packet". A user looking 
at the plausible PGP packet stream output would not suspect that there 
is anything wrong with this:

```
$ gpg key.gpg
gpg: WARNING: no command supplied.  Trying to guess what you mean ...
pub   ed25519 2025-12-21 [C] [expires: 2028-12-17]
     7C996D1BA8E1D4082719424AE80EBABCC54F0335
uid           Mallory <exfil@gpg.fail>
sub   ed25519 2025-12-21 [S] [expires: 2028-12-17]
sub   cv25519 2025-12-21 [E] [expires: 2028-12-17]
```

This chain of exploits allows doing this by just abusing logic bugs and 
odd decisions in GnuPG. Several of those, especially the bypass 
silencing the warning that MUST be printed, are technical, logical bugs 
that can and should be fixed.

 > Item 5:  Memory Corruption in ASCII-Armor Parsing
 >
 > This is a serious memory-safety error in GPG.

Yes. We did not have the time to try to exploit it, but we agreed that 
there is potential for remote code execution. We think that it is 
irresponsible to not release the fix on the 2.4 branch, which is what 
most users in the wild use.

 > Item 6:  Trusted comment injection (minisign)
 >
 > This is really a terminal-manipulation trick:  the fake trusted 
comment must be longer in order to fully obscure the original text after 
the inserted CR moves the cursor back to the left edge.  Again, using 
almost anything other than cat(1) to read the file will either show the 
chicanery or at least raise the proverbial eyebrow.

Similar to the explanation above, this uses a technical issue (being 
able to inject *anything* into the trusted comment at all, which can and 
should be fixed) and exploits it further by fooling users that there was 
no other trusted comment in the first place. This can also be exploited 
without the carriage return.

 > Item 7:  Cleartext Signature Forgery in the NotDashEscaped header 
implementation in GnuPG
 >
 > This is a misfeature that probably should not have been implemented, 
or should have been implemented much more strictly.

Agreed. This can and should be fixed.

 > Item 8:  OpenPGP Cleartext Signature Framework Susceptible to Format 
Confusion
 >
 > Another logical solution to this issue would be to recognize when 
processing something that looks like a clearsigned message and reject a 
one-pass signature if a clearsigned message header has been seen.

This is not that easy; defining what a "header" is is pretty hard, as 
the attack demonstrates purposefully breaking the header. One way to fix 
this would be to only allow whitespace instead of arbitrary text before 
and after the parsed data.

 > Item 9:  GnuPG Output Fails To Distinguish Signature Verification 
Success From Message Content
 >
 > I think this is actually an old problem, previously affecting 
Thunderbird and Git IIRC, and the existing --status-fd mechanism in GPG 
is meant for exactly this case, at least for automated processing.

The general concept yes, we just found that in practice `--verify` just 
does not work with encrypted and signed payloads, which further makes 
this harder to avoid on the CLI specifically.

 > Item 10:  Cleartext Signature Forgery in GnuPG
 >
 > This is simply an implementation defect in GPG and should be fixed by 
improving the validation of the "Hash" header.

Agreed. This can and should be fixed.

 > Item 11:  Radix64 Line-Truncation Enabling Polyglot Attacks
 >
 > This is another implementation defect in GPG, although fixing it may 
be more involved:  the radix64 reader should be refactored to work by 
characters (or arbitrary blocks) instead of by lines.
 >
 > In fact, arbitrary limits are generally contrary to the GNU Coding 
Standards, so this really should be fixed... :-)

Agreed. This can and should be fixed.

 > Item 12:  GnuPG may downgrade digest algorithm to SHA1 during key 
signature checking
 >
 > The root of this is another out-of-bounds read.  There is a simple 
fix to this:  always, *always*, *ALWAYS* initialize stack-resident local 
variables.
 >
 > I am also unsure about the actual insecurity of SHA1 in general.  
Have there been more attacks since the first actual collision?

As far as we know, this does not have any direct impact for a user 
without huge amounts of compute, but regardless should be fixed as a 
downgrade to SHA1 is significantly reducing security.

 > Item 13:  GnuPG Trust Packet Parsing Enables Adding Arbitrary Subkeys
 >
 > Keyrings are trusted stores, so this is more of a documentation problem.
 >
 > The report is right that caching signature checks is probably a bad 
idea, although it may have been justifiable in the past due to limited 
computing power.

What should be highlighted especially here are the manual page entries:

```
--keyring file
     Add  file  to  the  current list of keyrings. If file begins with a 
tilde and a slash,
     these are replaced by the $HOME directory. If the filename does not 
contain  a  slash,
     it  is  assumed  to  be  in  the  GnuPG home directory ("~/.gnupg" 
unless --homedir or
     $GNUPGHOME is used).

     Note that this adds a keyring to the current list. If the intent is 
to use the  speci-
     fied keyring alone, use --keyring along with --no-default-keyring.

     If the option --no-keyring has been used no keyrings will be used 
at all.

     Note  that if the option use-keyboxd is enabled in 'common.conf', 
no keyrings are used
     at all and keys are all maintained by the keyboxd process in its 
own database.

--import-options restore
     Import in key restore mode.  This imports all data which  is 
usually  skipped  during
     import;  including  all  GnuPG  specific  data.  All other 
contradicting  options  are
     overridden.
```

`restore` vaguely implies that something that usually should not be 
imported is imported, but especially `--keyring` does not mention *at 
all* that this *effectively disables key signature verification*. As a 
user, I would expect `--keyring` to actually *use* the provided public 
keys instead of just skipping signatures when requested. We would not 
consider this a bug if this was called 
`--INSECURE-allow-importing-signature-cache-values` with a huge warning 
on the manual page, but especially since `--keyring` is a common option, 
this is a very real security risk in our opinion. Importing and using 
untrusted public keys (without giving them a trust value) should be a 
safe operation in cryptography software.

 > Item 14:  Trusted comment Injection (minisign)
 >
 > This is closely related to item 6, except that this time minisign 
itself outputs the sequences that manipulate the terminal.

Agree on this; this is more of a trusted UI problem in general, but can 
and should be fixed in our opinion.

Best, Lexi Groves (49016)
