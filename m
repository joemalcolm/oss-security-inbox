X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["984" "Thursday" "25" "August" "2016" "13:59:28" "-0500" "Jordan Bettis" "jordanb@hafd.org" "<57BF4010.8010409@hafd.org>" "20" "Re: [oss-security] CVE Request - Gnu Wget 1.17 - Design Error Vulnerability" "^Date:" nil nil "8" "2016082518:59:28" "[oss-security] CVE Request - Gnu Wget 1.17 - Design Error Vulnerability" (number mark "        jordanb@hafd Aug 25   20/984   " thread-indent "\"Re: [oss-security] CVE Request - Gnu Wget 1.17 - Design Error Vulnerability\"\n") "<CANO=Ty2f=cqmd14DeZkqW4FZeeh0w0RFKHZnCPa7471rsapVkQ@mail.gmail.com>" ("<F1719FA0B756A0418954A40BEB1A013849B1062B@BRN1WNEXMBX01.vcorp.ad.vrsn.com>" "<CANO=Ty2f=cqmd14DeZkqW4FZeeh0w0RFKHZnCPa7471rsapVkQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16142 invoked by uid 550); 25 Aug 2016 19:04:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13977 invoked from network); 25 Aug 2016 18:59:43 -0000
Message-ID: <57BF4010.8010409@hafd.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:17.0) Gecko/20131103 Icedove/17.0.10
MIME-Version: 1.0
References: <F1719FA0B756A0418954A40BEB1A013849B1062B@BRN1WNEXMBX01.vcorp.ad.vrsn.com> <CANO=Ty2f=cqmd14DeZkqW4FZeeh0w0RFKHZnCPa7471rsapVkQ@mail.gmail.com>
In-Reply-To: <CANO=Ty2f=cqmd14DeZkqW4FZeeh0w0RFKHZnCPa7471rsapVkQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Date: Thu, 25 Aug 2016 13:59:28 -0500
From: Jordan Bettis <jordanb@hafd.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request - Gnu Wget 1.17 - Design Error Vulnerability
To: oss-security@lists.openwall.com

On 08/11/2016 10:34 PM, Kurt Seifried wrote:
> 
> Please note that the attacker would also have to have access to the local
> file system, either shell access or by some additional exploit,
> additionally they would have to have read access to the file wget is
> downloading (so same security context, or really poor permissions).
> 
...
> Please note again that to exploit this you would need a situation where the
> attacker can control what wget is fetching, or execute a man in the middle
> attack, AND has local access to the system downloading the file AND has
> permissions to read the file AND some sort of additional vulnerability that
> requires being able to read a file in order to escalate privileges.
> 

Suppose I convince web admin to wget jpeg files from my server into his
web root. The jpeg directory also contains the file evil.php. During the
download, evil.php now exists in his web root and I can cause it to be
executed by visiting the correct path via http.

