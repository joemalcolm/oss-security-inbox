X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["940" "Friday" "8" "December" "2017" "00:51:50" "+0100" "Marcus Brinkmann" "marcus.brinkmann@ruhr-uni-bochum.de" "<780d4f26-0803-6ef8-3a21-bcf8ea480a29@ruhr-uni-bochum.de>" "23" "[oss-security] Re: Recommendations GnuPG-2 replacement" nil nil nil "12" "2017120723:51:50" "[oss-security] Re: Recommendations GnuPG-2 replacement" (number mark "U       marcus.brink Dec  8   23/940   " thread-indent "\"[oss-security] Re: Recommendations GnuPG-2 replacement\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1326 invoked by uid 550); 8 Dec 2017 07:44:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26374 invoked from network); 7 Dec 2017 23:52:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ruhr-uni-bochum.de;
	s=mail-2017; t=1512690711;
	bh=06AFmL0U0pWTN6ocXA92Rboql3n7WTAywPJF5yrjJIM=;
	h=To:From:Subject:Date:From;
	b=GKpHBrHX15bWVWgMGzlIc26lD7SFlfu8hXU6AWazM3CZ+RHlV+ekHx2/FkDsv21+7
	 89xiz6rGyhtDwPwyYDuHlSa8FN/ws8zN+K1ECcnxUZZVy6p6o9IbvpSwIbG84ybVGL
	 4f2kdCNTaPC8kGyFEnYu+nkCw4vdF7drjkVlHrxQ=
X-Envelope-Sender: <marcus.brinkmann@ruhr-uni-bochum.de>
X-RUB-Notes: Internal origin=134.147.42.227
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.99.2 at mx2.mail.ruhr-uni-bochum.de
To: oss-security@lists.openwall.com
From: Marcus Brinkmann <marcus.brinkmann@ruhr-uni-bochum.de>
Message-ID: <780d4f26-0803-6ef8-3a21-bcf8ea480a29@ruhr-uni-bochum.de>
Date: Fri, 8 Dec 2017 00:51:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.99.2 at mail1.mail.ruhr-uni-bochum.de
X-Virus-Status: Clean
Subject: [oss-security] Re: Recommendations GnuPG-2 replacement

Hi,

I started neopg.io two months ago to provide a modern replacement for
GnuPG.  It will go back to a single-binary architecture like gpg1 was,
but move forward on just about every other issue:

* Written in C++
* based on the Botan crypto library instead of libgcrypt
* typical library + CLI (with subcommands) architecture
* better testing (CI, static analysis)

In the beginning, things will be somewhat unstable as I am cleaning up
and restructuring the internals completely, but I try to keep every
commit a somewhat running version (currently keyserver lookup is broken
because I am not registering the root certificate of the keyserver CA -
yes, openpgp keyservers have their own self-signed root CA).

You can follow the progress on neopg.io and the resources linked from
there.  I am keen on documenting the changes and the reasons for them as
I go along.  I am open to suggestions, just open an issue on GitHub.

Thanks,
Marcus
