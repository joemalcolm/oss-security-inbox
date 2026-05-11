Received: (qmail 17762 invoked by uid 550); 11 May 2026 20:43:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17741 invoked from network); 11 May 2026 20:43:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pipping.org;
	s=manitu-webhosting; t=1778532206;
	bh=wS5HYDYAIjPgGxoYSCvZyIkaFnh7MKImMR4KY/OoZpE=;
	h=Date:From:Subject:To;
	b=Ct9zRrRgJL4iGvELh9prnurjfgihsoSVUinAVTZI1zSzmSt/CnXNDcDYDbzdKPW+r
	 u9zZ/H65NDqTFV7I26u1byo9+EZuQi5d+40uVgh3uU2Ytc3HlediNB0RYgB7onwx3d
	 gnzP7QZFY4P3dICeqLx6VXSLBkNc7UUA/38KSEVqtOu4jZoHhwDjQOqPYmCLpIGQvm
	 OI2ea04eLeyS9rVI2bvW7Ug8v5h1emHHRFDqetipi3lJhXp/t+OHccwUWlQG0fj7hs
	 tXUx2pOFWAdnIputEJFcA4eeuUYyKrUm6Dr3WfkdsMoinyzEGFUJnY0QdOPVJhPrjf
	 BG5IBsdZPxzaA==
Message-ID: <96eb9370-0f79-45f5-9073-adab4693b192@pipping.org>
Date: Mon, 11 May 2026 22:43:24 +0200
MIME-Version: 1.0
Content-Language: en-US
From: Sebastian Pipping <sebastian@pipping.org>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] libexpat 2.8.1 fixes CVE-2026-45186 (denial of service)

Hello oss-security,


just a quick note that libexpat 2.8.1 (or "Expat 2.8.1") released
yesterday is fixing CVE-2026-45186:

   Fix quadratic runtime from attribute name collision checks that
   allowed denial of service attacks through moderately sized crafted
   XML input (CWE-407).
   Please note that a layer of compression around XML can significantly
   reduce the minimum attack payload size.

Some key links are:

- The blog post about it
   https://blog.hartwork.org/posts/expat-2-8-1-released/

- The change log of release 2.8.1
   https://github.com/libexpat/libexpat/blob/R_2_8_1/expat/Changes

- The fixing pull request
   https://github.com/libexpat/libexpat/pull/1216

- The NVD CVE metadata
   https://nvd.nist.gov/vuln/detail/CVE-2026-45186

PS: The CVE database lists an unrealistically low CVSS score for this.
     The complexity of an attack is very low (not "High") and the attack
     vector is remote (not "Local"). I have asked Mitre to fix this
     earlier today. My blog post linked above has a few more words on
     that topic.

Best



Sebastian
