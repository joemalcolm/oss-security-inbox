Received: (qmail 15885 invoked by uid 550); 30 Dec 2025 19:11:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31760 invoked from network); 30 Dec 2025 06:34:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767076457; x=1767681257; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=T3jZc0fZxn+yIlzYhTjCasLBc3TDQCq8Ij8H5qXRGZ8=;
        b=Hcy6Pk1jrThoF6Q6hO3OVe8RkdDsq6Qpzrig9MX7slbh0GYyD8XlvEPCq3yl3MRTWJ
         OVVq3u6SkKxiu5vijJO6LUcSJCXYaiByZuEJ7z7OYG2x79L6YrwIEW0HJNBWzpkLug4j
         zwsI3bMLnfxtbBpt7OUyi1lsOxfN8LN5ksFgAU+RC+GKaAOl/kyOR0SzxWPnApjDRqr7
         pI+4QMd+8BVeT4m8/QVyYqvDSSJUl2zI87xSyHGFV7vFqWGiS2VGtgv89IFTNMkrzfO+
         fDlEnMJvBFvuve98t8wJ62NgrUBUngEmHfJPvOorj8X6n6Du1j/jr3ff1KIettxQFRVK
         V2Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767076457; x=1767681257;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T3jZc0fZxn+yIlzYhTjCasLBc3TDQCq8Ij8H5qXRGZ8=;
        b=dwOj1kbpHtBamWXig0lC8cr/k2/Y/G3pz3vjz4M6EnKnzrU4M5uQCLA2l/8wHkDcA5
         QmU2JICV17sATeLJP7+6kyZFFWmrqGg9+rhZ07WQLuYljQxgLIPq5hB/ib0UAyinIun4
         P3PhR0UaGC2yivDQo3V6kvoHtu8Zfc6sTdGJxPHkNjjctgHaSfus8XR2KTmv7mNdjO4L
         c6pd7aTpIBnzn9VXZ9Go+nr8CLQnsrbEnsaHoeXuuV3iO4+DU/3bQBaDiGVyK7kvAbOK
         MMdd0Lq6e5FfliTE/pNzAU72Ssp31v2rYfCHpepqwCsEEfgRdiWK14mdBVliwhukYZgR
         LhVA==
X-Forwarded-Encrypted: i=1; AJvYcCWnvVuEfmDRUWcpoM7aeEb7Ph2kOdpgWt+glzPV7k9+G9p5/hxws7M8K7jwiry9Yln1eRNvdt2stB14We8=@lists.openwall.com
X-Gm-Message-State: AOJu0Yxip8FggFXiR7CvvG8CGKyz13MBwN8zqrURa5fxvJYgnqmvtWLw
	0YW5SkzoPbVro+SpXOIWvD1x39aMmH1xABnT1RQYz1zm8ppAh8g6tKBB
X-Gm-Gg: AY/fxX5QF1H02bLDB2s8Zek9VcnSf5gOvWbD2bAC79rZL6jWUUla1MUUkO7k8qzStIG
	BwoaEXdJdK2GH3oC81o83t9bAYqLsDe29N/ZUkJyrVjt38nVsFLQIz5T/9pyQp+S7Kj22H5XFhv
	ZwzRNCUSFQCPpUm/ImnyAowcApoSLvtyB0eajD3vwsE6EZeVRJtEzJidFQcZEz11BRVgXDz6wce
	HLP9qmb6ZlSzYldnenX3Pc4+XlRRclm9XaV15akW0PSxPcnFCzFIMUmUSIWoNBHyRJ9ylK5x1uv
	Colhk+8wZbbeUiFmMKbrFB9+r7LUE28TAFBxu0iBIAV58mNB6dCeON1gewE6i9U5ciLsQ5ywh4b
	Kiv34p51JRlHOhtyEfR9+kFO7MqWQZ/JPHsbWbo4vW83ltzZlcPmlYoDt921Hygb1Ig2b9S1os6
	DwoMIjegU=
X-Google-Smtp-Source: AGHT+IHsEXia/WOZyo/S2fwis1Q5q84XZcAi7F53IfIf158U72xS5IEXleU8ZU81rh6n9r8D1e9KfA==
X-Received: by 2002:a05:6830:44a5:b0:7b7:59c5:765c with SMTP id 46e09a7af769-7cc66a0d171mr20243830a34.7.1767076457013;
        Mon, 29 Dec 2025 22:34:17 -0800 (PST)
Message-ID: <4ff44688-6096-433b-97ab-43150f3512b5@gmail.com>
Date: Tue, 30 Dec 2025 00:34:08 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Lexi Groves (49016)" <contact@gpg.fail>,
 oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>
References: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
 <20251228042744.GA629@openwall.com>
 <0009d6cc-143e-41e6-b240-eb526a9cb306@gmail.com>
 <d892df77-a488-4a51-af35-697897e3984e@gpg.fail>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <d892df77-a488-4a51-af35-697897e3984e@gpg.fail>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Many vulnerabilities in GnuPG

On 12/29/25 10:57, Lexi Groves (49016) wrote:
> Hi! Thanks for the comment. Some clarifications from us:
>
> > Overall, I have one very major point of disagreement here: the 
> OpenPGP clearsign format is useful precisely because it enables the 
> signed message to be easily viewed with other tools, thus complicating 
> attacks and making large-scale attacks much more likely to be 
> detected.  (It only takes one user who looks at a clearsigned digest 
> list with less(1) and sees a bunch of control sequences to raise an 
> alarm.)
>
> This affects two of the vulnerabilities, and while we do agree that we 
> focused exploitation on naive viewers, one can also leave out the 
> "creative formatting"; especially the `NotDashEscaped:` header can 
> also be used without any control sequences. These two specific attacks 
> do have their limitations, but are still worth reporting.

I agree that they are worth reporting, but I am not yet convinced that 
they are fatal flaws in the OpenPGP clearsign format.

> > Item 1:  Multiple Plaintext Attack on Detached PGP Signatures in GnuPG
> >
> > Exploitation requires a very odd use of signatures.  Bob knows that 
> he has a detached signature, and ordinarily a detached signature is 
> simply used to verify the signed file, after which the signed file is 
> used directly.
>
> This was found especially in response to the clearsig advice being to 
> use an option to print what was *actually* verified, e.g. `--decrypt`, 
> to avoid plaintext confusion attacks. This fools exactly that 
> mechanism that was used to prevent exploitation in the previous attacks.

In other words, the correct ways to verify a detached signature and a 
clearsigned message are different.  Since which of those you should have 
is obvious, that is only a matter of user education.

> [...]
>
> We assumed that the manual was the source of truth and assumed that 
> using `--decrypt` was the standard way to do this; we may have been 
> biased here, because apparently the common knowledge about this 
> (according to some other documentation that we did not see) was using 
> `--output/-o`. However, due to the nature of the attack, setting the 
> wrong output file while hashing the correct file, `--output` works the 
> same way:
>
> ```
> $ gpg --output x --verify msg.txt.sig msg.txt
> gpg: Signature made Mon 29 Dec 2025 02:59:11 PM CET
> gpg:                using EDDSA key 
> EE6EADB4CBB063887A3BE2B413AEBEC571BA1447
> gpg: Good signature from "39c3 demo <demo@gpg.fail>" [ultimate]
> $ cat msg.txt
> asdf
> $ cat x
> Malicious
> ```

Now that I look at this again, I see a logic error in GPG:  GPG *should* 
barf if directed to verify a detached signature (which it knows because 
it was given the name of the file to verify on the command line) but the 
"detached signature" contains a message in the OpenPGP packet stream.

There is another logic error here also:  GPG can be tricked into 
emitting output that is *not* the signed message.  Do I now understand 
correctly that GPG will *verify* the original signature but *output* the 
contents of the injected Literal Packet?

In other words, there is a workaround for careful users:  use 
`--decrypt`/`--output` *only* when reading a signed message, and only 
`--verify` when checking a detached signature.  Is this correct?

> [...]
>
> > Item 2:  GnuPG Accepts Path Separators and Path Traversals in 
> Literal Data "Filename" Field
> >
> > While this is a potentially serious bug, as it enables an attacker 
> to potentially overwrite any file if the attacker can guess the file 
> name, it also relies more on a social-engineering attack.  While a 
> naive user might use the suggested command, a more-experienced user 
> should immediately smell a rat.
>
> Yes. This probably wouldn't fool a hardcore cypherpunk, but to be 
> honest, it'd get me. Reaper compared this to a clickjacking attack in 
> web exploitation, and we completely agree with this classification: 
> this is an exploit chain that abuses the naivety of the user to 
> trigger a *technical* issue.  Nevertheless, I believe that software 
> should always do its best to protect against human error.

I agree that GPG should force extracted files visibly into the current 
directory unless explicitly directed otherwise.  This is logically easy 
on POSIX:  s!/!_!g and s!^[.]!_! on the filename. Of course, if the user 
specifies `--output` then write to exactly the name given.

> > The PoC uses ANSI escapes to cover up (erase, move left) the hash 
> mark that makes the fake message viable as a shell script, the actual 
> payload command (set as invisible text), and the prompt from GPG about 
> writing the output file (which appears to be sent to the window 
> title).  I am uncertain how the user is supposed to see the next 
> prompt, as the invisible text mode does not appear to be reset.
>
> This was a slight miscommunication; this does indeed swallow the next 
> bash prompt. Assuming a user doesn't then recover their terminal but 
> just restarts the shell, it spawns a new Bash process, which sources 
> the newly written file. This was just one example of exploitation; 
> there probably is a way to turn an arbitrary write into direct 
> execution on most systems without relying on bash.

Perhaps GPG's "write file" prompt could be made dynamic, with a nonce 
string generated by GPG that the user must type to approve writing the 
file?   An exploit that hides the GPG prompt thus prevents the user from 
approving the file write.

> > Item 3:  Cleartext Signature Plaintext Truncated for Hash Calculation
> >
> > GPG uses in-band signaling if a line is too long.  Comments in the 
> GPG sources acknowledge that this is a hack.
> >
> > The exploit does have a problem in that it reports an error about 
> "invalid armor" due to a line being too long.  Also, while it works if 
> the message is fed directly to a terminal, I suspect that reading the 
> message with less(1) would show interesting anomalies.
>
> There would indeed be an anomaly; there have to be 30,000 bytes of 
> *something*. An experienced user might suspect something is wrong, but 
> this is a serious issue regardless.

Agreed.  This should be correctly handled, as the GNU Coding Standards 
are very clear about avoiding arbitrary limits.

> > Item 4:  Encrypted message malleability checks are incorrectly 
> enforced causing plaintext recovery attacks
> >
> > This item admits not actually having a complete attack, and I am 
> unsure how exactly this leads to recovering plaintext, even if Bob 
> cooperates.
>
> While we have not chained all bugs together, we have gotten outputs 
> like [this](https://keys.openpgp.org/search?q=exfil@gpg.fail) on 
> production builds of GnuPG 2.4.8 that contain the plaintext of an 
> encrypted file (viewed with Sequoia to highlight the issue):
>
> ```
> $ gpg --export exfil@gpg.fail | sq packet dump
>
> Public-Key Packet, new CTB, 2 header bytes + 51 bytes
>     Curve: Ed25519
>     Fingerprint: 06993EC337C276ECFD8C598AB613D42DB68D9E1D
>     [...]
>
> Signature Packet, new CTB, 3 header bytes + 371 bytes
>     Type: DirectKey
>     Unhashed area:   Here's the zlib header! ↓
>       Preferred keyserver: 
> "http://localhost:9999/upload-key?x=�\u{14}G\"\u{16}��>�\u{15}fd�x\u{15}D\u{15}D�\u{2}x�\u{1}H\0���Fb\0iHP
>                             ��#�5 That is plaintext 
> w�W���w\u{605}���r\u{1c}�&\u{f}ǟ�\r�^\u{e}��D}�,/�n_���{�Jv�!��\u{14}�\t\u{7}��;�jB2D�!6�a��\"�"
> ```
>
> > (User willingness to sign a random key received by email without 
> verifying it breaks Web-of-Trust badly.)
>
> The attack does require some user interaction, and a plausible one is 
> always a bit of a challenge; the attack scenario we were thinking of 
> was telling a victim to decrypt and upload a key to a public keyserver 
> *without signing it*, just to publish it (for example to circumvent 
> censorship). We got this slightly wrong in the writeup, apologies for 
> that mistake. We have a correct but brief explanation in the talk (at 
> gpg.fail) as well.

I agree that that is much more plausible.

> > If there is a bug here, it seems to be an out-of-bounds read in 
> GPG's Inflate implementation:  the decrypted ciphertext is in the 
> memory buffer prior to the altered packets and thus prior to the 
> beginning of the compressed stream.
> >
> > I am unsure how the garbled comment packet is produced, unless it is 
> the result of interpreting the decrypted data as a compressed stream 
> and "inflating" it.
>
> This is *not* a memory safety issue, and explaining the bug a bit 
> further in-depth hopefully clears this up. Excuse my potentially 
> incorrect language, I am only a hobby cryptographer for fun, but I 
> will try to break this down.

I now see what I missed last night (explained below).  While looking at 
this again, I found an error in your original write-up:  you also 
mentioned "working with AES-256-CBC" (but note that CBC is *also* 
malleable).

> PGP uses the [Cipher FeedBack/CFB mode of 
> operation](https://en.wikipedia.org/wiki/Block_cipher_mode_of_operation#Cipher_feedback_(CFB)). 
> Decryption here is the thing that interests us, which works the 
> following way:
>
> 1. Take the ciphertext of the last block, or when initializing the IV 
> block
> 2. Encrypt (yes, *en*crypt) the result of 1. with the key
> 3. XOR the current ciphertext with the result of 2.
>
> A malleability attack, where an attacker tries to manipulate the 
> output of this operation, is possible by simply XORing bits into the 
> current ciphertext block. This will break the next block, but we can 
> inject data into the current block as long as we can guess the 
> plaintext of the current block.
>
> This is practically exploitable since GPG defaults to ZLib 
> compression, which has a quite predictable header, and since the 
> attack only requires guessing 7 bytes from the ZLib header to set up a 
> "trampoline", this is practically doable.
>
> Said "trampoline" does the following:
>
> - Since the malleation corrupts the block following it, we need to 
> "catch" that error, like a `try/catch` statement; for that we (ab)use 
> the PGP comment packet, which is meant for adding comments to PGP 
> packet streams and thus ignores all input.
> - We also need deflate, specifically because since it does not have a 
> header like ZLib, it is short enough to fit in there, and for a trick 
> up our sleeve later.
>
> So what we insert via XORing is:
>
> ```
>       a3 01                                      # PGP Compressed 
> packet, algorithm=DEFLATE
>             00 NN NN ~N  ~N                      # Deflate store (e.g. 
> no compression) block of len=NN
>                             d0 NN                # PGP comment packet, 
> len=NN
>                                   00 00 00 00 00 # garbage till end of 
> block
> ```
>
> This sets us up so our PGP packet stream does not get corrupted.
>
> Here's what you probably missed: The CFB mode is essentially a state 
> machine that only knows the last block of ciphertext, the current 
> block of ciphertext, and the stateless encryption function. *We can 
> reset this state to the initial position* by just putting a block 
> filled with zeroes to reset the state, and then *repeat the entire 
> ciphertext*, which a correct PGP implementation then decrypts into 
> that comment packet. *This is a fundamental issue with CFB, and not a 
> PGP or GPG issue*, but we *also* broke the checksum handling of GPG to 
> obfuscate malleability attacks; more on this in a bit.

But if that is it, how did you reset the read pointer to get the 
ciphertext decrypted a second time?  I *now* see what I missed then:  
you did not reset the read pointer; you copied the entire original 
ciphertext where it will be decrypted and fed into Inflate, in a context 
where Inflate is expecting literal data which will go into an OpenPGP 
comment packet and be discarded.

You exploited CFB's malleability to convert the ZLIB header into the 
start of a DEFLATE stream to set up that context and the reset the 
keystream so the copy of the ciphertext will be correctly decrypted.  (A 
similar attack would also work on CBC.)

Clever, very clever.  :-)

> Now that we have our plaintext in the decompression buffer, we abuse 
> *another* bug to remove the decryption IOBUF filter to be able to 
> freely write our payload. We still have the decompression filter on 
> the stack, so we can just write a normal public key packet, and inside 
> the public key packet use decompression features to repeat earlier 
> contents of the buffer to recover the plaintext in fields like the 
> keyserver field.

You then exploit a logic error in GPG to stop decrypting while 
continuing with the same Inflate context, allowing you to simply write 
the key packet headers and copy the decrypted data out of the 
decompression buffer into its place in your fake pubkey template.

(note to self:  when designing a chunked data format, compression 
wrappers should allow *exactly* one---and only one---compressed payload 
chunk)

This works as long as the encrypted message is small, 64 bytes in your 
example.  What is the upper limit for the message length that can be 
revealed with this method?

> [...]
>
> > Item 8:  OpenPGP Cleartext Signature Framework Susceptible to Format 
> Confusion
> >
> > Another logical solution to this issue would be to recognize when 
> processing something that looks like a clearsigned message and reject 
> a one-pass signature if a clearsigned message header has been seen.
>
> This is not that easy; defining what a "header" is is pretty hard, as 
> the attack demonstrates purposefully breaking the header. One way to 
> fix this would be to only allow whitespace instead of arbitrary text 
> before and after the parsed data.

It should be fairly simple:  only clearsigned messages have separate 
"BEGIN PGP SIGNED MESSAGE" and "BEGIN PGP SIGNATURE" lines and they do 
not contain One-Pass Signature Packets.  If "BEGIN PGP SIGNED 
MESSAGE"/"BEGIN PGP SIGNATURE" lines are seen before encountering a 
One-Pass Signature Packet, barf.

Generating a big fat WARNING if the input is found to match 
/^-{3,4}BEGIN PGP/ might also be a good idea, since the correct marker 
lines contain five hyphens in each group.

> [...]
>
> > Item 12:  GnuPG may downgrade digest algorithm to SHA1 during key 
> signature checking
> >
> > The root of this is another out-of-bounds read.  There is a simple 
> fix to this:  always, *always*, *ALWAYS* initialize stack-resident 
> local variables.
> >
> > I am also unsure about the actual insecurity of SHA1 in general.  
> Have there been more attacks since the first actual collision?
>
> As far as we know, this does not have any direct impact for a user 
> without huge amounts of compute, but regardless should be fixed as a 
> downgrade to SHA1 is significantly reducing security.

I am not sure about that.  As I understand, OpenPGP (and Git, for 
another example) only needs second preimage resistance, unlike X.509 
which needs absolute collision resistance, and the closest attack on 
SHA-1 is still only a chosen-prefix collision.

The SHA-1 sky has not fallen, yet.  It may be getting a bit creaky, but 
it is not falling.  :-)  (Yet...)  :-/

This logic error should still be fixed, of course.

> > Item 13:  GnuPG Trust Packet Parsing Enables Adding Arbitrary Subkeys
> >
> > Keyrings are trusted stores, so this is more of a documentation 
> problem.
> >
> > The report is right that caching signature checks is probably a bad 
> idea, although it may have been justifiable in the past due to limited 
> computing power.
>
> What should be highlighted especially here are the manual page entries:
>
> ```
> --keyring file
>     Add  file  to  the  current list of keyrings. If file begins with 
> a tilde and a slash,
>     these are replaced by the $HOME directory. If the filename does 
> not contain  a  slash,
>     it  is  assumed  to  be  in  the  GnuPG home directory ("~/.gnupg" 
> unless --homedir or
>     $GNUPGHOME is used).
>
>     Note that this adds a keyring to the current list. If the intent 
> is to use the  speci-
>     fied keyring alone, use --keyring along with --no-default-keyring.
>
>     If the option --no-keyring has been used no keyrings will be used 
> at all.
>
>     Note  that if the option use-keyboxd is enabled in 'common.conf', 
> no keyrings are used
>     at all and keys are all maintained by the keyboxd process in its 
> own database.
>
> --import-options restore
>     Import in key restore mode.  This imports all data which  is 
> usually  skipped  during
>     import;  including  all  GnuPG  specific  data.  All other 
> contradicting  options  are
>     overridden.
> ```
>
> `restore` vaguely implies that something that usually should not be 
> imported is imported, but especially `--keyring` does not mention *at 
> all* that this *effectively disables key signature verification*. As a 
> user, I would expect `--keyring` to actually *use* the provided public 
> keys instead of just skipping signatures when requested. We would not 
> consider this a bug if this was called 
> `--INSECURE-allow-importing-signature-cache-values` with a huge 
> warning on the manual page, but especially since `--keyring` is a 
> common option, this is a very real security risk in our opinion. 
> Importing and using untrusted public keys (without giving them a trust 
> value) should be a safe operation in cryptography software.

There should probably be some changes to the documentation.  For 
example, making clear that "GnuPG specific data" includes trust values.

The `--keyring` option is supposed to only affect the GPG invocation to 
which it is given.  Is it possible to add a key or trust packet to the 
default keyring merely by using a keyring containing that packet in an 
operation other than `--import`?

Also, the GPG developers seem intent on deprecating keyrings and moving 
to their newer "keybox" format.  (I think it is an SQLite database, but 
have not looked into it yet.)

> [...]
>
> Best, Lexi Groves (49016)

-- Jacob

