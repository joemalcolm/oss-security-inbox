X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5800" "Thursday" "23" "July" "2015" "04:29:53" "+0200" "Solar Designer" "solar@openwall.com" "<20150723022953.GB2298@openwall.com>" "90" "Re: [oss-security] Multiple memory corruption vulnerabilities in SoX 14.4.2" nil nil nil "7" "2015072302:29:53" "[oss-security] Multiple memory corruption vulnerabilities in SoX 14.4.2" (number mark "        solar@openwa Jul 23   90/5800  " thread-indent "\"Re: [oss-security] Multiple memory corruption vulnerabilities in SoX 14.4.2\"\n") "<CAJmfd-iN-y9g9cN9vLvR8B9YC6kNveh0L_aY5ZhNitQR=z=viw@mail.gmail.com>" ("<CAJmfd-iN-y9g9cN9vLvR8B9YC6kNveh0L_aY5ZhNitQR=z=viw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32202 invoked by uid 550); 23 Jul 2015 02:30:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32175 invoked from network); 23 Jul 2015 02:30:16 -0000
Message-ID: <20150723022953.GB2298@openwall.com>
References: <CAJmfd-iN-y9g9cN9vLvR8B9YC6kNveh0L_aY5ZhNitQR=z=viw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="Fba/0zbH8Xs+Fj9o"
Content-Disposition: inline
In-Reply-To: <CAJmfd-iN-y9g9cN9vLvR8B9YC6kNveh0L_aY5ZhNitQR=z=viw@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Date: Thu, 23 Jul 2015 04:29:53 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Multiple memory corruption vulnerabilities in SoX 14.4.2
To: oss-security@lists.openwall.com

--Fba/0zbH8Xs+Fj9o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 22, 2015 at 07:55:42PM +0200, Michele Spagnuolo wrote:
> I would like to report publicly new memory corruption vulnerabilities in
> the latest SoX, 14.4.2 - these have been reported in April 2015 through
> oCERT, but they have notified me they still haven't received a response
> from upstream.
> 
> Please see this shared folder, visible to anybody with the link:
> https://drive.google.com/folderview?id=0B52EFul-UCEIflZhcjlrRGlqcWdER2xJZWR4dmVUQ1RaRGl6a09sbVdGYjg2MER6OHl3aUU&usp=sharing
> 
> The write heap buffer overflows are related to ADPCM handling in WAV files,
> while the read heap buffer overflow is while opening a .VOC.
> 
> For each crash, you have the input file and a .txt with the ASAN output.

I'm not happy about use of external resources like Google Drive or
pastebin for crucial detail.  With Google Drive gone in some years from
now, your message would make little sense.  I understand that the .voc
file was a bit too large for attaching, and I dislike binary attachments
anyway, but at least I've attached the text files with ASAN backtraces,
as text/plain MIME type.  Ideally, you'd have proper analysis and even
smaller testcases rather than just this, but I understand that people's
time is limited.  So whatever we have... but at least we should have it
archived in here.

Alexander

--Fba/0zbH8Xs+Fj9o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="asan_heap-oob_53faf1_785_GOTTASAY.txt"

==16475==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x62d000008400 at pc 0x7f678e99886f bp 0x7fff25fdd480 sp 0x7fff25fdd478
READ of size 4 at 0x62d000008400 thread T0
    #0 0x7f678e99886e in sox_write_ub_samples /usr/local/google/home/mikispag/Downloads/sox/src/raw.c:113
    #1 0x7f678ea469e3 in write_samples /usr/local/google/home/mikispag/Downloads/sox/src/wav.c:1624
    #2 0x7f678e99d48d in sox_write /usr/local/google/home/mikispag/Downloads/sox/src/formats.c:986
    #3 0x40f770 in output_flow /usr/local/google/home/mikispag/Downloads/sox/src/sox.c:663
    #4 0x7f678e9c850d in flow_effect /usr/local/google/home/mikispag/Downloads/sox/src/effects.c:257
    #5 0x7f678e9c850d in sox_flow_effects /usr/local/google/home/mikispag/Downloads/sox/src/effects.c:449
    #6 0x41105a in process /usr/local/google/home/mikispag/Downloads/sox/src/sox.c:1802
    #7 0x404074 in main /usr/local/google/home/mikispag/Downloads/sox/src/sox.c:3008
    #8 0x7f678dc66ec4 in __libc_start_main (/lib/x86_64-linux-gnu/libc.so.6+0x21ec4)
    #9 0x405694 (/usr/local/google/home/mikispag/Downloads/sox/src/.libs/lt-sox+0x405694)


--Fba/0zbH8Xs+Fj9o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="asan_heap-oob_73793c_6614_test_ima_adpcm.txt"

==11226==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x619000008172 at pc 0x7fad485a099f bp 0x7fffeb10ecb0 sp 0x7fffeb10eca8
WRITE of size 2 at 0x619000008172 thread T0
    #0 0x7fad485a099e in ImaExpandS /usr/local/google/home/mikispag/Downloads/sox/src/ima_rw.c:126
    #1 0x7fad485a0f3c in lsx_ima_block_expand_i /usr/local/google/home/mikispag/Downloads/sox/src/ima_rw.c:142
    #2 0x7fad485a52b5 in ImaAdpcmReadBlock /usr/local/google/home/mikispag/Downloads/sox/src/wav.c:141
    #3 0x7fad485a52b5 in read_samples /usr/local/google/home/mikispag/Downloads/sox/src/wav.c:1131
    #4 0x7fad484fa40e in sox_read /usr/local/google/home/mikispag/Downloads/sox/src/formats.c:978
    #5 0x40e1b2 in sox_read_wide /usr/local/google/home/mikispag/Downloads/sox/src/sox.c:490
    #6 0x40f000 in combiner_drain /usr/local/google/home/mikispag/Downloads/sox/src/sox.c:552
    #7 0x7fad48524f9f in drain_effect /usr/local/google/home/mikispag/Downloads/sox/src/effects.c:352
    #8 0x7fad48524f9f in sox_flow_effects /usr/local/google/home/mikispag/Downloads/sox/src/effects.c:445
    #9 0x41105a in process /usr/local/google/home/mikispag/Downloads/sox/src/sox.c:1802
    #10 0x404074 in main /usr/local/google/home/mikispag/Downloads/sox/src/sox.c:3008
    #11 0x7fad477c3ec4 in __libc_start_main (/lib/x86_64-linux-gnu/libc.so.6+0x21ec4)
    #12 0x405694 (/usr/local/google/home/mikispag/Downloads/sox/src/.libs/lt-sox+0x405694)


--Fba/0zbH8Xs+Fj9o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="asan_heap-oob_7391b4_8427_wav_ms_adpcm.txt"

==11888==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x61600000f88a at pc 0x7fdf6135ae89 bp 0x7fff38e05f70 sp 0x7fff38e05f68
WRITE of size 2 at 0x61600000f88a thread T0
    #0 0x7fdf6135ae88 in lsx_ms_adpcm_block_expand_i /usr/local/google/home/mikispag/Downloads/sox/src/adpcm.c:157
    #1 0x7fdf61360090 in AdpcmReadBlock /usr/local/google/home/mikispag/Downloads/sox/src/wav.c:178
    #2 0x7fdf61360090 in read_samples /usr/local/google/home/mikispag/Downloads/sox/src/wav.c:1133
    #3 0x7fdf612b540e in sox_read /usr/local/google/home/mikispag/Downloads/sox/src/formats.c:978
    #4 0x40e1b2 in sox_read_wide /usr/local/google/home/mikispag/Downloads/sox/src/sox.c:490
    #5 0x40f000 in combiner_drain /usr/local/google/home/mikispag/Downloads/sox/src/sox.c:552
    #6 0x7fdf612dff9f in drain_effect /usr/local/google/home/mikispag/Downloads/sox/src/effects.c:352
    #7 0x7fdf612dff9f in sox_flow_effects /usr/local/google/home/mikispag/Downloads/sox/src/effects.c:445
    #8 0x41105a in process /usr/local/google/home/mikispag/Downloads/sox/src/sox.c:1802
    #9 0x404074 in main /usr/local/google/home/mikispag/Downloads/sox/src/sox.c:3008
    #10 0x7fdf6057eec4 in __libc_start_main (/lib/x86_64-linux-gnu/libc.so.6+0x21ec4)
    #11 0x405694 (/usr/local/google/home/mikispag/Downloads/sox/src/.libs/lt-sox+0x405694)


--Fba/0zbH8Xs+Fj9o--
