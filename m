X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["338" "Tuesday" "10" "August" "2021" "15:41:56" "+0200" "Guido Berhoerster" "guido+openwall.com@berhoerster.name" nil "9" "Re: [oss-security] STARTTLS vulnerabilities" "^Date:" nil nil "8" nil nil (number mark "        guido+openwa Aug 10    9/338   " thread-indent "\"Re: [oss-security] STARTTLS vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] STARTTLS vulnerabilities" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5525 invoked by uid 550); 10 Aug 2021 13:51:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1813 invoked from network); 10 Aug 2021 13:42:11 -0000
Message-ID: <20210810134156.GF1599104@hal>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20210810122113.3fe65cc9@computer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210810122113.3fe65cc9@computer>
Date: Tue, 10 Aug 2021 15:41:56 +0200
From: Guido Berhoerster <guido+openwall.com@berhoerster.name>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] STARTTLS vulnerabilities
To: oss-security@lists.openwall.com

Hi,

have you or are you planning to look into XMPP client/server
implementations as well?  The use of STARTTLS for both c2s and s2s
connections is still prevalent both in terms of implementation
support and actual practice and could potentially suffer form the
same issues (command injection or downgrade attacks).
-- 
Guido Berhoerster
