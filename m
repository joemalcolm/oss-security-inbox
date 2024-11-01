Received: (qmail 22454 invoked by uid 550); 1 Nov 2024 16:11:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13446 invoked from network); 1 Nov 2024 12:57:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uni-hamburg.de;
	s=rrzs003; t=1730465831;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BYQvmpmrc/IJji1ovFxV3ywRkehthzlG9g06YIt3i+U=;
	b=OGvdpQzyhauaKVXj0F9owHNGeAHzUygtG4X1eApWixsNXOuFDm6LyD0rN8b3iwqtDQeMu0
	S5oCclcahCiGt/uDm/soUD9m58Pdr7C1rZsPJK3sfFqV8vbggXD1T0GfGFkR5rR1217C+t
	Dl3PLrYM0ACcQaSSLIwfTRhjQJ+YMCSlVNGPVmiSgX4yvocAq+tOUb/3/DH5gTpPmHbVms
	Vu5wlNUOhpNxQAOC9ePHqthWOm+o37u2uq5LXucM+sVE6Wp+MKL5/CYOVJj5ThCM0rw0UT
	7hW6khibrOWN10bUgs3yVkDuhOGxFfvu8XQQG6DrgNGkS41ZUtIwyi5jnVwg2A==
Date: Fri, 1 Nov 2024 13:52:21 +0100
From: "Dr. Thomas Orgis" <thomas.orgis@uni-hamburg.de>
To: <oss-security@lists.openwall.com>
Message-ID: <20241101135221.7a7f5037@cortex.rrz.uni-hamburg.de>
In-Reply-To: <CAN_LGv0ruQFGn4R-VwRSm2Cj_=d5UEcHqKigKV3ciVaDqkPSJw@mail.gmail.com>
References: <20241030183237.4e46db4f@plasteblaster>
	<CAOGQQ28MtkwOyqSZNw7pnTqD3chm9q7q6b9H_MFNE9zRHPoMsQ@mail.gmail.com>
	<CAOGQQ28MhqvZF9Jq8Hka-jyZzmhxey6riwAwn-4uxL8PKn6hWg@mail.gmail.com>
	<CAN_LGv0ruQFGn4R-VwRSm2Cj_=d5UEcHqKigKV3ciVaDqkPSJw@mail.gmail.com>
Organization: =?UTF-8?B?VW5pdmVyc2l0w6R0?= Hamburg
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.39; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [134.100.3.33]
X-ClientProxiedBy: EX-S-MR05.uni-hamburg.de (134.100.84.88) To
 EX-S-MR06.uni-hamburg.de (134.100.84.89)
Subject: Re: [oss-security] mpg123 buffer overflow in versions before 1.32.8
 (Frankenstein's Monster)

Am Fri, 1 Nov 2024 08:52:28 +0800
schrieb Alexander Patrakov <patrakov@gmail.com>:

> Is there any way to check if any of my MP3 files contain the stuff
> that triggers the bug? Would, for example, Checkmate
> (https://github.com/Sjord/checkmate) flag them without also being
> exposed to security risks?

It's tricky to detect the exact situation(s) that would lead to the
decoder buffer overflow. The mpg123 parser is very persistent in making
various damaged or ill-prepared MPEG streams work. MPEG streams (files)
have a history of lots of stuff being tagged on or even just being
actually damaged during transfer/storage. This makes it kind of a worst
case from the security POV and my main defense for still maintaining
this is that the codebase has been tested for bugs over a long period
now and things like that are rather rare to be still found. This
particular issue is embarrassing, though. In retrospect I should have
not supported Frankenstein streams at all, I guess (I _think_ I added
that … been a long time). But I do have hope that the extensive testing
the code gets on various fronts results in minimal chance of such
glaring flaw surfacing again.

What a scanner like checkmate can do is to tell you if the file matches
an ideal simple structure and will definitely not trigger the issue. It
will be overly cautionous. Mpg123 will properly decode a lot more files,
including the case of

	cat *.mp3 | mpg123 -

where the individual files may wary in lots of properties. The
triggering of the bug needs two conditions:

1. MPEG headers vary in format (stereo or mono, for example).
2. There are incomplete frames that trigger the situation where the
   header got parsed, but no matching frame body was read.

Even this is not enough to really say if this is a stream that would
trigger, as you need a certain combination of libmpg123 usage and
stream.

If you know you deal with clean individual files and no streamdumps
with random junk inserted, your referred scanner could do the trick and
be a safe option. If you want to be a bit less extreme and more correct
in terms of how mpg123 would parse the stream, with more error
resilience, you can check for Frankenstein streams as mpg123 itself
detects them:

	mpg123 --index -n 0  file.mp3

will just run the parser over the file for indexing frame offsets, but
not run the decoder on any of them (-n 0).

$ mpg123 --index -n 0 ~/Downloads/mpg123_heapoverflow_write 
High Performance MPEG 1.0/2.0/2.5 Audio Player for Layers 1, 2 and 3
	version 1.32.8; written and copyright by Michael Hipp and others
	free software (LGPL) without any warranty but with best wishes

Warning: Xing stream size off by more than 1%, fuzzy seeking may be even more fuzzy than by design!
Note: Illegal Audio-MPEG-Header 0x00000000 at offset 609.
Note: Trying to resync...
Note: Skipped 92 bytes in input.

Warning: Encountered more data after announced end of track (frame 1/1). Frankenstein!
Note: Illegal Audio-MPEG-Header 0x6f9d179f at offset 910.
Note: Trying to resync...
Note: Skipped 17 bytes in input.

Warning: Real sample count 3456 differs from given gapless sample count 1152. Frankenstein stream?
Directory: /home/user/Downloads/

Terminal control enabled, press 'h' for listing of keys and functions.

Playing MPEG stream 1 of 1: mpg123_heapoverflow_write ...

This was a Frankenstein track.
[0:00] Decoding of mpg123_heapoverflow_write finished.

You could check for the message like this:

$ test "This was a Frankenstein track." = "$(mpg123 --index -n 0 ~bernd/Downloads/mpg123_heapoverflow_write 2>&1 | tail -n 2 | head -n 1)" && echo yes
yes

You could be more cautionous by looking for 'Frankenstein' anywhere in
the output, but that would catch files with that in the Path.

Also, you can add --no-infoframe to still let concatenated files that
match in decoder properties pass through:

$ cat /some/album/*.mp3 > /dev/shm/test.mp3
$ mpg123 --no-infoframe --index -n 0 /dev/shm/test.mp3 
High Performance MPEG 1.0/2.0/2.5 Audio Player for Layers 1, 2 and 3
	version 1.32.8; written and copyright by Michael Hipp and others
	free software (LGPL) without any warranty but with best wishes

Directory: /dev/shm/

Terminal control enabled, press 'h' for listing of keys and functions.

Playing MPEG stream 1 of 1: test.mp3 ...

[0:00] Decoding of test.mp3 finished.

(no Frankenstein complaint)

$ mpg123  --index -n 0 /dev/shm/test.mp3 
High Performance MPEG 1.0/2.0/2.5 Audio Player for Layers 1, 2 and 3
	version 1.32.8; written and copyright by Michael Hipp and others
	free software (LGPL) without any warranty but with best wishes

Warning: Xing stream size off by more than 1%, fuzzy seeking may be even more fuzzy than by design!

Warning: Encountered more data after announced end of track (frame 204/204). Frankenstein!

Warning: Real sample count 185602176 differs from given gapless sample count 235008. Frankenstein stream?
Directory: /dev/shm/

Terminal control enabled, press 'h' for listing of keys and functions.

Playing MPEG stream 1 of 1: test.mp3 ...

This was a Frankenstein track.
[0:00] Decoding of test.mp3 finished.

Thinking about this, I just realize that -n 0 also neatly avoids noise
through metadata display, as that is only triggered by mpg123 when
actually decoding.

So in short:

	mpg123 --no-infoframe --index -n 0 testfile.mp3 \
	| grep '^This was a Frankenstein track\.'

would be an adequate test.


Alrighty then,

Thomas

-- 
Dr. Thomas Orgis
HPC @ Universität Hamburg
