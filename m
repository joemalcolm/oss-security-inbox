X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["481" "Thursday" "15" "June" "2017" "15:50:42" "+0200" "Adam Maris" "amaris@redhat.com" "<1497534642.3053.3.camel@redhat.com>" "19" "Re: [oss-security] Re: MySQL - use-after-free after mysql_stmt_close()" "^Date:" nil nil "6" "2017061513:50:42" "[oss-security] Re: MySQL - use-after-free after mysql_stmt_close()" (number mark "        amaris@redha Jun 15   19/481   " thread-indent "\"Re: [oss-security] Re: MySQL - use-after-free after mysql_stmt_close()\"\n") "<201706122347.54536@pali>" ("<201706082349.03355@pali>" "<201706122347.54536@pali>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32686 invoked by uid 550); 15 Jun 2017 13:50:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32656 invoked from network); 15 Jun 2017 13:50:56 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com C78B07F3EB
Authentication-Results: ext-mx01.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx01.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=amaris@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com C78B07F3EB
Message-ID: <1497534642.3053.3.camel@redhat.com>
In-Reply-To: <201706122347.54536@pali>
References: <201706082349.03355@pali> <201706122347.54536@pali>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Thu, 15 Jun 2017 13:50:45 +0000 (UTC)
Date: Thu, 15 Jun 2017 15:50:42 +0200
From: Adam Maris <amaris@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: MySQL - use-after-free after
 mysql_stmt_close()
To: pali.rohar@gmail.com, oss-security@lists.openwall.com

On Mon, 2017-06-12 at 23:47 +0200, Pali Rohár wrote:
> Hello!
> 
> Any idea how to handle this particular problem?
> 
> 

Hi!

Given that Oracle (silently) updated the vulnerable example in their
documentation, this likely indicates the way to handle this -
applications that copied the vulnerable example needs to be fixed and
CVEs will be assigned per application.

Best Regards,

-- 
Adam Mariš, Red Hat Product Security
1CCD 3446 0529 81E3 86AF  2D4C 4869 76E7 BEF0 6BC2 
