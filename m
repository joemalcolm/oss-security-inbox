X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2465" "Thursday" "21" "January" "2021" "08:30:17" "+0900" "Andrew Wesie" "andrew@theori.io" "<CAE-dkstC2zp20DUosQ-2CfHf+f=Lj1vz+0JsA9vp42dX8FufLQ@mail.gmail.com>" "59" "[oss-security] CVE-2021-3185 gstreamer: buffer overflow in gst_h264_slice_parse_dec_ref_pic_marking" nil nil nil "1" "2021012023:30:17" "[oss-security] CVE-2021-3185 gstreamer: buffer overflow in gst_h264_slice_parse_dec_ref_pic_marking" (number mark "U       andrew@theor Jan 21   59/2465  " thread-indent "\"[oss-security] CVE-2021-3185 gstreamer: buffer overflow in gst_h264_slice_parse_dec_ref_pic_marking\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3185 gstreamer: buffer overflow in gst_h264_slice_parse_dec_ref_pic_marking" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19882 invoked by uid 550); 20 Jan 2021 23:40:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9687 invoked from network); 20 Jan 2021 23:30:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theori-io.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=nQRtS0rqeFPdAWfRLMEPqHqMVZR/kuGlVNd1pB6O/MM=;
        b=W5k489NNZA7bkdQiS0+gpfXUmUyRsJdTjJ8Ppn3PYHla7H88rJB1VtOBih6SEtqbNF
         J9jbIllflVH93bbUEh0XfWInp6ATspi82+3Bjp5uLTHxwsbc+Eu0LHTsyZG0BRD0iClS
         TI8uNIBNJZEUjoNrfjmRIlakcBe47iiLDmyCzMEJRP7DhioUVfeK35FlQrSyROdW1ybb
         itovsIIZfG5VL9UQC9Girlf3fZYOYV6AE0d3vSX77oOpjQdusyAWkV9dKfIX6Il74owa
         8O+qXW0XmbEl2qRgWyp9NsCZapi95zKTwqKsKneQb6GhpN2Ndzs+m3RtUxi9Wjfi/DjX
         wSZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=nQRtS0rqeFPdAWfRLMEPqHqMVZR/kuGlVNd1pB6O/MM=;
        b=qYtRK2nvmM0ZE7zvK0RZTY73pEtXHTSPwn3LDCsYOUDQTMiwM3lf2ERrhffsPgbFKs
         qIzCJOWNmaF0xRkB5LRIpk5uPmSUrMsp4PWdSd/G3GRm64qE8oo8ua+rM7ynGXGOk0fK
         Ox2W4TzRWbwEXDkVvbTNus7KgP4mrGUUx5JGAqiVmZNrZ7jLdNgW+QHo0zawvPnV/Tnt
         0lFy2cWmWV4fKFoUnSrJH2bY79CpYrKag5n1tEIqMfe2Z2uu4t9GfnnlJO1l8O3iya0I
         EaLev9lgE8/4l5nzqe8knCmmOH6e0gMQPO5uW4p016dbdAuVjXlfXcFnHwHEUhCHlGKd
         GByg==
X-Gm-Message-State: AOAM533sS3lwLukcHfak4AZtRctqUa90YSHBwg8BBtWNlnA+9x7WDxfF
	5F/1EDBs2acROr4H8CQWzUxD/V2vRgLss56+BsxtojgrKzPM1IMI
X-Google-Smtp-Source: ABdhPJxDjuwjy+N/rmqc+JqFFPy6iry6yNQmdkwHdMEn4YkuEaZR5fF8Rv+4N5SEFAW4hnCHqnWup3UtGprMAvuTQYU=
X-Received: by 2002:a17:907:3e1b:: with SMTP id hp27mr7061533ejc.506.1611185428520;
 Wed, 20 Jan 2021 15:30:28 -0800 (PST)
MIME-Version: 1.0
From: Andrew Wesie <andrew@theori.io>
Date: Thu, 21 Jan 2021 08:30:17 +0900
Message-ID: <CAE-dkstC2zp20DUosQ-2CfHf+f=Lj1vz+0JsA9vp42dX8FufLQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2021-3185 gstreamer: buffer overflow in gst_h264_slice_parse_dec_ref_pic_marking

Hello all,

During a source code audit, Theori discovered a stack buffer overflow
in the h264parse module which is part of gstreamer-plugins-bad 1.x.
The vulnerable code path can be triggered when gstreamer parses any
attacker-controlled H.264 content. This flaw could lead to remote code
execution.

The flaw was fixed by the GStreamer project in gstreamer 1.18.1 and
gstreamer 1.16.3:
https://gitlab.freedesktop.org/gstreamer/gst-plugins-bad/-/merge_requests/1703

CVE-2021-3185 was assigned for this issue.

Affected versions:

gstreamer 1.x before 1.18.1 and 1.16.3

Technical details:

There is a stack buffer overflow in
gst_h264_slice_parse_dec_ref_pic_marking when parsing a H.264
bitstream. There is no bounds check on the index variable,
dec_ref_pic_m->n_ref_pic_marking, and the destination array,
dec_ref_pic_m->ref_pic_marking, has a fixed size of 10 elements. The
fix is to check that the index variable does not go past the end of
the array.

The overflown array is within a GstH264DecRefPicMarking structure
allocated on the stack in gst_h264_parse_process_nal as part of a
GstH264SliceHdr structure. This leads to the usual stack buffer
overflow exploitation techniques, and to the possibility of an
attacker overflowing the array to modify other fields within
GstH264SliceHdr without triggering a stack canary.

The overflown array type is an array of GstH264RefPicMarking
structures. The attacker can only control one field of the structure
for each element. However, since the index variable is a byte, an
attacker can cause the index variable to wrap around and fill in
additional fields within each element. The attacker can also choose to
use an unhandled operation field value so that they do not overwrite
some portions of the stack memory. It is theoretically possible an
attacker could use this to "jump" over the stack canary and avoid
triggering an abort.

This vulnerability was discovered by Theori during a source code audit
for a customer who uses gstreamer. We were able to exploit this
vulnerability to achieve remote code execution in their environment.
They were using only partial ASLR and not using stack canaries; we
believe that exploitation would've been significantly more difficult
on a modern desktop Linux distribution.

Distributions shipping older branches of gstreamer 1.x should backport
the fix. We believe that any version of gstreamer 1.x before the fix
was committed will be vulnerable.

--
Andrew Wesie
Theori
