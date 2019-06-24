X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["470" "Monday" "24" "June" "2019" "08:14:43" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20190624061443.kzsgc6rz7noznnnu@jwilk.net>" "13" "Re: [oss-security] curl: Windows OpenSSL engine code injection" "^Date:" nil nil "6" "2019062406:14:43" "[oss-security] curl: Windows OpenSSL engine code injection" (number mark "        jwilk@jwilk. Jun 24   13/470   " thread-indent "\"Re: [oss-security] curl: Windows OpenSSL engine code injection\"\n") "<alpine.DEB.2.20.1906240745030.23737@tvnag.unkk.fr>" ("<alpine.DEB.2.20.1906240745030.23737@tvnag.unkk.fr>") nil nil nil nil nil nil nil "Re: [oss-security] curl: Windows OpenSSL engine code injection" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19905 invoked by uid 550); 24 Jun 2019 06:15:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19881 invoked from network); 24 Jun 2019 06:15:01 -0000
Message-ID: <20190624061443.kzsgc6rz7noznnnu@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <alpine.DEB.2.20.1906240745030.23737@tvnag.unkk.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1906240745030.23737@tvnag.unkk.fr>
User-Agent: NeoMutt/20180716
X-Ovh-Tracer-Id: 7663156244903417766
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddruddugddutdeiucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenuc
Date: Mon, 24 Jun 2019 08:14:43 +0200
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] curl: Windows OpenSSL engine code injection
To: oss-security@lists.openwall.com

* Daniel Stenberg <daniel@haxx.se>, 2019-06-24, 07:46:
>A non-privileged user or program can put code and a config file in a 
>known non-privileged path (under `C:/usr/local/`) that will make curl 
>automatically run the code (as an openssl "engine") on invocation. If 
>that curl is invoked by a privileged user it can do anything it wants.
[...]
>CWE-94: Code Injection

I think CWE-426 (Untrusted Search Path) would be more appropriate for 
this bug.

-- 
Jakub Wilk
