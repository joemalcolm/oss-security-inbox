X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["731" "Monday" "14" "March" "2016" "19:37:01" "+0000" "Bart de Water" "bart@somnilocode.nl" "<CAMhPm6NxrFTnfdJbT3RkC7rHiUYaXL-EmFREv0Cpued00Dii=g@mail.gmail.com>" "21" "[oss-security] CVE request: DoS vulnerability in Ruby gem Paperclip" "^Date:" nil nil "3" "2016031419:37:01" "[oss-security] CVE request: DoS vulnerability in Ruby gem Paperclip" (number mark "U       bart@somnilo Mar 14   21/731   " thread-indent "\"[oss-security] CVE request: DoS vulnerability in Ruby gem Paperclip\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18096 invoked by uid 550); 14 Mar 2016 19:38:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17838 invoked from network); 14 Mar 2016 19:37:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=somnilocode-nl.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=2VYRy5hdVsG15OnTC6YoUrXZ7JT96SCrgP0aJSCWcBM=;
        b=kWfEWH5509ZDXRlJlte8S9RKhSqpbnFajm6oispSWy9umNimDbp3ilNSChg86UbyUT
         rxMv2Ggkt8QtzcGnYnaFn2aq7S1HLWAjxH9TRJ6Y5n56l5EF/vKx0AIys3QJfed9c9I/
         ZcUmB3tPDlNWNiTobCgHpsSzdDX5TP06bWmF1qdGPrKqVxYgOl27CNLpYHFws3PuAxav
         XR146O4LDTDWKNohgS3yHArnJNlDd3GOoct8angB2CPiBrm8Esy2z3WeIxXZcbWdlwBA
         Wd65KQwYsRbfhPLhzR/5NyJ7MoWhB1oxFY1u5HP3fL1IVIZIBe/zYCq0VP+voStAD1D5
         Mt+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=2VYRy5hdVsG15OnTC6YoUrXZ7JT96SCrgP0aJSCWcBM=;
        b=dLgRk4JNGCqTuCQC/2rjWd3NsemZME4OQYcfor1xiz0Q9b1HNuz04GtW9dbQASibmQ
         3dUv+mauXrlx7m8PxiaAoHRNAzt4MV232OQx77AC1ngOwH+HYfYXJmhnqU0xBF39aU7S
         TvEDKWGlGcxlDPl1C4D9bN2ckZv5WWOHTcB5306FgIIh3yByjiaHsU5vnkAX/hSTaxlv
         bOdyJR3iQE6L3VWXbPXESDMiRvY9cDaQL6hoERmJLU9ayiRP0JlkT30AGp4joUnSmjyW
         UYE2XWxsspZA6TBmmjw3YGBWFoy4bbc6DhVSWHmokf88h7o1V6qq6GLQNrVm4sX6R9Be
         6IYw==
X-Gm-Message-State: AD7BkJISo4MHTdnia68Jzmu+yVQ7SGxP+RdfeMT+QfI7PvVw15kVZ8jObkTdskWSKTm/18OnJN0xRmn95VXcXQ==
X-Received: by 10.194.7.201 with SMTP id l9mr26431713wja.16.1457984231144;
 Mon, 14 Mar 2016 12:37:11 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAMhPm6NxrFTnfdJbT3RkC7rHiUYaXL-EmFREv0Cpued00Dii=g@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7b5d45842fa202052e076848
Date: Mon, 14 Mar 2016 19:37:01 +0000
From: Bart de Water <bart@somnilocode.nl>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: DoS vulnerability in Ruby gem Paperclip
To: oss-security@lists.openwall.com

--047d7b5d45842fa202052e076848
Content-Type: text/plain; charset=UTF-8

Hello,

I believe there's a denial of service vulnerability in Paperclip version
4.2.2 through 4.3.5: it's possible to cause a DoS by uploading files with a
spoofed media type, because it causes megabytes of logging (data from the
mime-types gem) to be written. See
https://cwe.mitre.org/data/definitions/779.html for more information.

It seems to be introduced in this commit
https://github.com/thoughtbot/paperclip/commit/9aee4112f36058cd28d5fe4a006d6981bd1eda57
in
version 4.2.2 and it's fixed in 4.3.6 (released yesterday) with this pull
request: https://github.com/thoughtbot/paperclip/pull/2126

Thanks,
Bart de Water

--047d7b5d45842fa202052e076848--
