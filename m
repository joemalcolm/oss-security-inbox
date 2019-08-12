X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["447" "Monday" "12" "August" "2019" "09:46:55" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1908120945250.19899@scrappy.simplesystems.org>" "10" "Re: [oss-security] ghostscript CVE-2019-10216: -dSAFER escape via .buildfont1" "^Date:" nil nil "8" "2019081214:46:55" "[oss-security] ghostscript CVE-2019-10216: -dSAFER escape via .buildfont1" (number mark "        bfriesen@sim Aug 12   10/447   " thread-indent "\"Re: [oss-security] ghostscript CVE-2019-10216: -dSAFER escape via .buildfont1\"\n") "<20190812132515.GA4647@cbuissar-ltop.localdomain>" ("<20190807065737.GA3930@cbuissar-ltop.localdomain>" "<20190812132515.GA4647@cbuissar-ltop.localdomain>") nil nil nil nil nil nil nil "Re: [oss-security] ghostscript CVE-2019-10216: -dSAFER escape via .buildfont1" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9867 invoked by uid 550); 12 Aug 2019 14:47:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9844 invoked from network); 12 Aug 2019 14:47:08 -0000
X-X-Sender: bfriesen@scrappy.simplesystems.org
In-Reply-To: <20190812132515.GA4647@cbuissar-ltop.localdomain>
Message-ID: <alpine.GSO.2.20.1908120945250.19899@scrappy.simplesystems.org>
References: <20190807065737.GA3930@cbuissar-ltop.localdomain> <20190812132515.GA4647@cbuissar-ltop.localdomain>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Mon, 12 Aug 2019 09:46:56 -0500 (CDT)
Date: Mon, 12 Aug 2019 09:46:55 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ghostscript CVE-2019-10216: -dSAFER escape via
 .buildfont1
To: oss-security@lists.openwall.com

Is it known if this issue also impacts the PDF reader?  I see that the 
involved code is Resource/Init/gs_type1.ps which is presumably related 
to Postscript Type 1 fonts, which might be included in a PDF file.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
Public Key,     http://www.simplesystems.org/users/bfriesen/public-key.txt
