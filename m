X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["784" "Tuesday" "19" "May" "2015" "11:19:34" "-0700" "Stanislav Malyshev" "smalyshev@gmail.com" "<555B7EB6.7060302@gmail.com>" "16" "[oss-security] Re: CVE Request + Advisory: PHP str_repeat() sign mismatch based memory corruption" nil nil nil "5" "2015051918:19:34" "[oss-security] Re: CVE Request + Advisory: PHP str_repeat() sign mismatch based memory corruption" (number mark "        smalyshev@gm May 19   16/784   " thread-indent "\"[oss-security] Re: CVE Request + Advisory: PHP str_repeat() sign mismatch based memory corruption\"\n") "<555B469F.30800@truel.it>" ("<5559A053.6090004@truel.it>" "<5559A43F.7040606@gmail.com>" "<5559AA5A.3050705@truel.it>" "<555A6B2A.1020205@gmail.com>" "<555B469F.30800@truel.it>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17783 invoked by uid 550); 19 May 2015 18:20:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17762 invoked from network); 19 May 2015 18:19:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=P7QmNZYg70QIO1QvKop3HgtOvTqYglkA6gILdubnOEA=;
        b=dLXTnXHZk0fkq5/KIFVXId4r+vYb21kuKGs7vmq1MRx+mElk2GgdIo7Wpx6XVJA1F7
         5uwTwnCgoBaCuUL9l0xebIMmpFftmD9Nf38ZIZR+9Sfto/qlG0K3x9ty0jKCeAr4pTsl
         fdSTR872F3ur+tBOssnLHevt50fpD/HCyNJnjUZQdhrDaNpfmGTz+cjdAR4LYzYY4F5f
         ay+S6g2FU5rHwcdsXJ8b2Qpmxvzf/EzotAmj3zIrpN3vnNdc7fuKE7EH8gjHEnjr1N3x
         1CUYGq1XJ5pBe6otTaMpwanm/tDnMysbrA3cNlFS/zfs9G14AnlI3kU1ds1C1fpHxGNY
         4JQw==
X-Received: by 10.68.221.164 with SMTP id qf4mr57020069pbc.1.1432059587534;
        Tue, 19 May 2015 11:19:47 -0700 (PDT)
Message-ID: <555B7EB6.7060302@gmail.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <5559A053.6090004@truel.it> <5559A43F.7040606@gmail.com> <5559AA5A.3050705@truel.it> <555A6B2A.1020205@gmail.com> <555B469F.30800@truel.it>
In-Reply-To: <555B469F.30800@truel.it>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
CC: oss-security@lists.openwall.com, security@php.net
Date: Tue, 19 May 2015 11:19:34 -0700
From: Stanislav Malyshev <smalyshev@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request + Advisory: PHP str_repeat() sign mismatch based
 memory corruption
To: Andrea Palazzo <andrea.palazzo@truel.it>

Hi!

> http://phpcrossref.com/xref/jpegmeta/EXIF.php.html,
> https://code.google.com/p/zimbra-api-php/,
> http://phpcrossref.com/xref/jpegmeta/XML.php.html) it is really likely
> that it would end up processed by one of these functions (string
> concatenation, for example).
> 
> $makernote <http://phpcrossref.com/xref/jpegmeta/_variables/makernote.html> .= str_repeat <http://phpcrossref.com/xref/jpegmeta/_functions/str_repeat.html>("\x00",( $tiff_data <http://phpcrossref.com/xref/jpegmeta/_variables/tiff_data.html>[ 'Makernote_Tag' ][ 'Offset' ] - 8 ) );

OK, I guess with parsing external formats like EXIF it can happen, so
while I'm still not sure about remote exploitation, remote triggering is
a possibility, you've convinced me here.
-- 
Stas Malyshev
smalyshev@gmail.com
