X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["454" "Saturday" "26" "March" "2016" "08:25:55" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20160326072555.GA8119@eldamar.local>" "18" "[oss-security] CVE Request: pcre: Segmentation fault on certain input to regular expressions with nested alternatives when JIT is used" "^Cc:" nil nil "3" "2016032607:25:55" "[oss-security] CVE Request: pcre: Segmentation fault on certain input to regular expressions with nested alternatives when JIT is used" (number mark "        carnil@debia Mar 26   18/454   " thread-indent "\"[oss-security] CVE Request: pcre: Segmentation fault on certain input to regular expressions with nested alternatives when JIT is used\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13710 invoked by uid 550); 26 Mar 2016 07:26:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13692 invoked from network); 26 Mar 2016 07:26:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=VPs4ra99UZ2/+nLBjYcPpMhcL2b6AwY6eeVdBqEf+3k=;
        b=TGoke46J2USJnYXpaRXe5vlgZLUk4Ixw7VvSJof78++zS232ocbNMbmZpLIvDmEsv3
         mV/kd8jkFR1K077nnpWYbwwkRhZni1t+aeA122+NEyW6EC7uP7jvZuZwXorOuzAmdgSW
         mD1tpX8Evztb8aPiY2otPMJwZ57hzM5pulrHyIoUzrrO/IqNlT7vrVJ8LGUFE+OBDhZ+
         ShYkUe9zpyQ5PkLVB8taWxwSUNg3g/Z4ve0nINGras0kVuc2UZnF2hvQwjgyejAgRp6k
         BMB2I8MhymbhvSD1Dwu4Kvjrgeiw1jpo3+EHV3lVe1A6gW+WsPBuswY0hFenLO8Iv8Lb
         484w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=VPs4ra99UZ2/+nLBjYcPpMhcL2b6AwY6eeVdBqEf+3k=;
        b=I5jvsi2c8MNG6S/m76LBGXiDzYREX0h8rZYtV3VIzOJAezgf4NTgxoi3WfiO/TPVvi
         yGzzUBEX17WK1at2eyXxzJKzMAEQQ6OKmH6yWMpjtjQT1HJk1bRElaLotF8rjxZHgPEf
         44uXNrGp1mHuy9cQUln7WS+Jha7wXQ6jBc7B8BrmpQyAL5tu6eyStRA9qTQQMCgG6gxf
         BblaYeZlQrN7luUEehUAwgBsvoBw8gXTQiXERoETxK9i2ayNGq/q3lahGtWmqWeSmGsH
         OcZtQYYlPlpuuR96vJiQxqrzNXmcWlJSzHKRNM5whBJjrFgMsfVi16p1lyWDaS8diiGk
         GewA==
X-Gm-Message-State: AD7BkJIOpMhCbi/soGiiOmLmFuH3J1KjgPb0Ra7RGradPmf9Xf/1bh3LVdkKm3nyGb2WoA==
X-Received: by 10.28.7.196 with SMTP id 187mr626455wmh.12.1458977158716;
        Sat, 26 Mar 2016 00:25:58 -0700 (PDT)
Message-ID: <20160326072555.GA8119@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: CVE Assignments MITRE <cve-assign@mitre.org>
Date: Sat, 26 Mar 2016 08:25:55 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: pcre: Segmentation fault on certain input to regular
 expressions with nested alternatives when JIT is used
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

In Debian the following issue was reported (test case contained)

https://bugs.debian.org/819050


On certain input when processed for regular expressions with nested
alternatives and JIT is used, pcre3 can segfault, affecting in this
case suricata leading to at least a denial of service.

The problem was addressed upstream with commit:
http://vcs.pcre.org/pcre?view=revision&revision=1475

Can you assign a CVE for this issue?

Regards,
Salvatore
