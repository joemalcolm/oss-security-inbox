X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1907" "Friday" "27" "May" "2016" "14:25:09" "+0100" "Patrick Coleman" "blinken@gmail.com" "<3a4fbbc4-be6e-e410-21f0-0f32d12bafd9@gmail.com>" "61" "[oss-security] CVE request: VLC - crash and potential code execution when processing QuickTime IMA files" nil nil nil "5" "2016052713:25:09" "[oss-security] CVE request: VLC - crash and potential code execution when processing QuickTime IMA files" (number mark "U       blinken@gmai May 27   61/1907  " thread-indent "\"[oss-security] CVE request: VLC - crash and potential code execution when processing QuickTime IMA files\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9295 invoked by uid 550); 27 May 2016 13:25:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9268 invoked from network); 27 May 2016 13:25:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=to:from:subject:message-id:date:user-agent:mime-version;
        bh=p6Aitp+ZOGV8nxTccc7j7AlrUpAPIO717uoi1C2dr/Q=;
        b=wJHqL1bAGwtanfcZC624KYf6+7x4TL0Bpw2AlIBx6J+UqiqNAsAWPOCE1zU734daqR
         lYEi1IUjx5ixeR0ylIOHyChHpK5iP2iY+J2y1HOIBrRH8bv+lGzCi+z9QsPzYiEj8j9m
         kC+c0dLU90kQuQkrq8haKAmagOVYM1AebIbl0zf2wFdFT8hnTyEPQDh5Q/FdnfsFC2Gt
         gY/C3u0YSD6kgTWHQLckapFn4oa8F99YRhCQH3X46sOQ7rZ8+M9B57DTurqKllq2PIjA
         rlqL3lFSIiJP0KxEMlWl7gxjGA2L63BRukF7BEtgWaY6/sXpIiNuFbqAKfqbCetjBHC+
         kdFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version;
        bh=p6Aitp+ZOGV8nxTccc7j7AlrUpAPIO717uoi1C2dr/Q=;
        b=N6po9x4jKrAhA2pcHscdE1VJMtwyKRxq0s5gZNaLxiGZE5wFltqb96j5qE3qW/kbFe
         zVrpN7MlFIlR1qcE/IxEIMwHr/Ebhbtcl2RUX1Zu+gGr/aCmD7btvx1Li3LT/vfnPHtG
         HyDNfMo5L76JIc8sJsK4la5vZvl/DVV9tKaNXh4ZvuCcV9POx5eukKMWdIvEuAfREo/b
         9JVLT2IijEIU16tVCvlyc2YbhERVF+ZY4LXAvoUzL/mpKdQtWkaCV3g7AfKkaJDWN/dl
         gliG+NLoawox968lQau2hLBW4vxmRtCw/S1YXKkizj/wHLlPitMaLYDISfsfFsYg6wDb
         wFfQ==
X-Gm-Message-State: ALyK8tKPIS68Hfyr6Ok4XheBeqWymC5YSBwNOJrf4ED/Rit4rqwnSa5fHbTfvDHgFwkbdw==
X-Received: by 10.28.87.131 with SMTP id l125mr8729071wmb.51.1464355511417;
        Fri, 27 May 2016 06:25:11 -0700 (PDT)
To: oss-security@lists.openwall.com
From: Patrick Coleman <blinken@gmail.com>
Message-ID: <3a4fbbc4-be6e-e410-21f0-0f32d12bafd9@gmail.com>
Date: Fri, 27 May 2016 14:25:09 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
 Gecko/20100101 Thunderbird/45.1.0
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------D2F20479FE4161BE4D0ACB56"
Subject: [oss-security] CVE request: VLC - crash and potential code execution when processing
 QuickTime IMA files

--------------D2F20479FE4161BE4D0ACB56
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Hi,

In modules/codec/adpcm.c, VLC can be made to perform an out-of-bounds
write with user-controlled input.

The function DecodeAdpcmImaQT at adpcm.c:595 allocates a buffer which
is filled with bytes from the input stream. However, it does not check
that the number of channels in the input stream is less than or equal
to the size of the buffer, resulting in an out-of-bounds write. The
number of channels is clamped at <= 5.

adpcm_ima_wav_channel_t channel[2];
...
for( i_ch = 0; i_ch < p_dec->fmt_in.audio.i_channels; i_ch++ )
{
    channel[i_ch].i_predictor  = (int16_t)((( ( p_buffer[0] << 1 )|(
p_buffer[1] >> 7 ) ))<<7);
    channel[i_ch].i_step_index = p_buffer[1]&0x7f;
...

The mangling of the input p_buffer above and in
AdpcmImaWavExpandNibble() makes this difficult to exploit, but there
is a potential for remote code execution via a malicious media file.

Please find attached a POC which crashes VLC[1].

The vendor has confirmed the issue has been resolved and will be fixed
in VLC 2.2.4 and VLC 3.0.0.

Please allocate a CVE for this issue. If you require any further
information, please let me know.

Regards,

Patrick

1. Also <https://blinken.co/20160527_vlc_poc_chans4.mov>. SHA1
08e1e74cf4edf19dddcea1c4da14798654d16097




-----BEGIN PGP SIGNATURE-----

iQEcBAEBCAAGBQJXSEqFAAoJEFQwhhLHo8khRWYIAIEYBsLg+0nSeiUP2lBqqEEI
d3zt0QhlcZD4Jk5U/HDcdu6QvSI/cMLNBxEwLbgPJt/hyYWEaQbfYzxcHLYr0Sgs
VAK8hEr/XXNcgi7iU6ApLuHXXzHQ4bJrzk1QJhAgp6G7bhzwDm8qcU7VvifjZaCo
hNsHT3w7kmBC2s7tIfGu09ufhW1Nzvf86DPRvF3xS2R90TGM8jdvRpAFrrjmp7jY
tHJVCiM1Ln19BlkglNShtd53nGT7Y0pEUrmAcMdqxuUGFRGAQplbfJ5HNnxhPZsd
FpXfktaHotBhf4OcbU0W4c5hg4fP2ajaPRPpkqAKukr+izHKxYZ7J5qn1OI6k3o=
=GERz
-----END PGP SIGNATURE-----

--------------D2F20479FE4161BE4D0ACB56--
