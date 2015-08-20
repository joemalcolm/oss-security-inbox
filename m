X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1059" "Thursday" "20" "August" "2015" "11:08:44" "+0200" "FEIST Josselin" "josselin.feist@gmail.com" "<55D5991C.7070107@gmail.com>" "25" "[oss-security] Use-after-free (and double-free) in Jasper JPEG-200 (CVE-2015-5221)" nil nil nil "8" "2015082009:08:44" "[oss-security] Use-after-free (and double-free) in Jasper JPEG-200 (CVE-2015-5221)" (number mark "        josselin.fei Aug 20   25/1059  " thread-indent "\"[oss-security] Use-after-free (and double-free) in Jasper JPEG-200 (CVE-2015-5221)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6071 invoked by uid 550); 20 Aug 2015 14:43:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29936 invoked from network); 20 Aug 2015 09:08:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:subject
         :content-type:content-transfer-encoding;
        bh=g+DOt9LsvY3QwicXTfQkx1QAYPCPLvG+TsJ0MWfcPe4=;
        b=SlUzkweruCC8QKqC71kFCaCoWgaij0MHNsCr1DzqMrJC33w6wutWnRNlRkuDpMXpLs
         x0SqdFRjTuZjRWSY4pmKuQr1AnwYo+74kVOvKsxJz4uPVogjTROgHiCeOM8ItevKMirQ
         VZGRc8nEoeGoUbDy7ktL29ZvdhiLBWlv8ISOWWpuCRpVT5UaQLJijWxaWxSroEf1Yp74
         TzP6gvoWkvTO3t7PUGT2eh14jwMqB0VSYyLOgzzzk9qhOzoJ+RKXxHBZ9Mc8bTi/Xs0b
         dOWOLqJErbVd82Y1u38wz/OMjhOeURppmtSIC7cLwf/v+rA7As3uUaplLDPyDYo1OmXw
         W8tg==
X-Received: by 10.195.11.202 with SMTP id ek10mr4160087wjd.12.1440061725983;
        Thu, 20 Aug 2015 02:08:45 -0700 (PDT)
Message-ID: <55D5991C.7070107@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 20 Aug 2015 11:08:44 +0200
From: FEIST Josselin <josselin.feist@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Use-after-free (and double-free) in Jasper JPEG-200 (CVE-2015-5221)
To: oss-security@lists.openwall.com

Hi,

A new use-after-free was found in Jasper JPEG-200.

The use-after-free appears in the function mif_process_cmpt of the src/libj=
asper/mif/mif_cod.c file. Both tvp and tvp->buf are freed by jas_tvparser_d=
estroy(tvp) (line 572), but if one of the two following branch conditions i=
s taken (line 573/576), a second call to jas_tvparser_destroy(tvp) occurs (=
line 586). It is a use-after-free because before calling free in jas_tvpars=
er_destroy there is a check to tvp->buf, while tvp could have been freed. T=
wo double free take place just after this check (on tvp->buf and tvp). A si=
mple fix  should be to move the first call of jas_tvparser_destroy after th=
e two branch conditions (or set tvp to NULL after it has been freed in mif_=
process_cmpt).

The vulnerability was found by a static binary analysis using the tool gueb=
 (that will become open-source soon).

Since another double-free in this library was found recently (http://seclis=
ts.org/oss-sec/2015/q3/366), maybe a patch could fix both of them ?

Best regards,
Feist Josselin


