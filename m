X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["317" "Friday" "16" "March" "2018" "10:34:46" "-0700" "Daniel Veditz" "dveditz@mozilla.com" "<c67f0613-d673-96a3-ba51-01610913d706@mozilla.com>" "10" "[oss-security] libvorbis/libtremor OOB write" nil nil nil "3" "2018031617:34:46" "[oss-security] libvorbis/libtremor OOB write" (number mark "U       dveditz@mozi Mar 16   10/317   " thread-indent "\"[oss-security] libvorbis/libtremor OOB write\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30459 invoked by uid 550); 16 Mar 2018 17:55:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30681 invoked from network); 16 Mar 2018 17:35:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mozilla.com; s=google;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=n9XYNn93pQbTUWD+utByt51JxdXJ0EB5r7WxRXHpwlg=;
        b=EwjcjpWjIVRb7MowcXdWs2Ey31DPFcMuvynJPysufRJN4IeXYvIMZPHrBV8D/LR6ND
         BOZbHhWwfmNJpIALiyWtC9y90IU8OKBjeEPZWDnaCzpDh7mZJeDoqg9F5TPU7dh+wxrA
         ot3hmXPbPkZXnceMeTx8OIi35pbL+61KDSYgs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=n9XYNn93pQbTUWD+utByt51JxdXJ0EB5r7WxRXHpwlg=;
        b=NKCmHTuFH0C8ij3EFu+LagMaEsn7zmsp/Qr02PasBnzi+gKNsUkyrVmuk4EwzmC6EM
         gZHy6Q10WalLBtUNamZF7IzTfHoDlKs1lduxQEOCNKMbvdiwyS9+OoilIOgWUZNYGvGw
         VoTiQOvjljb1GNAAR9qjGPy5Gd5q9fIig1Y+L1LHk2/Pgsl+IgTO+jJX+LWi7pnYYuV5
         tJuTGSyaIM0d8Ob3134K6Y10zLvPACPP3nx0pPv/QPvORq+6yhDq3NMbN/rcDQ7/Rn92
         xupkYO0/vIhLrqeXv3pIMnpUHJuJCUMhbUCERyd/3s5KzsM5h4RIVK9dC/6jywbQ4SBx
         a5qA==
X-Gm-Message-State: AElRT7GOF/F2hNb5dqzqzMpdc6oHwVxDJ3h/7sXv6ABZgSI0FlC6mq8t
	EjsCZEPM0R+j5MAPTnxRtNcHsmRvBiA=
X-Google-Smtp-Source: AG47ELvq514nqdK2ej28lveQB9Tq9Uc+7wLzREQqrIUthQamv3+K6AyCljabP6D3IudSdUWAFM3R1Q==
X-Received: by 10.101.86.138 with SMTP id v10mr2058029pgs.353.1521221688110;
        Fri, 16 Mar 2018 10:34:48 -0700 (PDT)
To: oss-security@lists.openwall.com
From: Daniel Veditz <dveditz@mozilla.com>
Message-ID: <c67f0613-d673-96a3-ba51-01610913d706@mozilla.com>
Date: Fri, 16 Mar 2018 10:34:46 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:52.0)
 Gecko/20100101 Thunderbird/52.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] libvorbis/libtremor OOB write

libvorbis and libtremor can write out of bounds when processing
malformed Vorbis audio data.

libvorbis 1.3.6 fixes CVE-2018-5146
https://github.com/xiph/vorbis/releases/tag/v1.3.6

libtremor doesn't have numbered releases but CVE-2018-5147 is fixed in
the git repo at https://git.xiph.org/?p=tremor.git

-Dan Veditz
