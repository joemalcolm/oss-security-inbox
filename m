X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["654" "Monday" "14" "March" "2016" "06:32:28" "+0000" "Steve Kemp" "steve@steve.org.uk" "<20160314063228.GA12829@steve.org.uk>" "24" "[oss-security] CVE-Request - GNU Awk." "^Date:" nil nil "3" "2016031406:32:28" "[oss-security] CVE-Request - GNU Awk." (number mark "        steve@steve. Mar 14   24/654   " thread-indent "\"[oss-security] CVE-Request - GNU Awk.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20059 invoked by uid 550); 14 Mar 2016 06:32:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20041 invoked from network); 14 Mar 2016 06:32:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=steve.org.uk; s=20150726;
	h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date; bh=v2pVplRtw90n+130t/gqh0FYJamDHCqQaXNP8n6acas=;
	b=F0cL54GXbbQepT9mP251j1NGMr4M2o01oRMRT8vbIeRMBxDrCoaxHcQnZiVPmnjrNGDd2Xdk2n4WbppRyWnIIUJfHtmz4S2wGnPjQneKKut+shfZ9cVqD/9NQvObCTXIGXuc9Xr1RzkolnFaAZ7JaH+zs7njBR4IePbychYKrd0=;
Message-ID: <20160314063228.GA12829@steve.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
X-added-header: steve.org.uk
Date: Mon, 14 Mar 2016 06:32:28 +0000
From: Steve Kemp <steve@steve.org.uk>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-Request - GNU Awk.
To: oss-security@lists.openwall.com


  I reported two DoS bugs against GNU Awk to the debian
 bug tracker recently, both of which are denial of service
 attacks causing NULL-pointer deferences.

  It would be useful to have a CVE identifiers assigned.

  The two issues can be demonstrated like so :

    echo | gawk  '{ print( @olower( "steve" ) ) }'

    echo | gawk 'for (i = ) in foo bar baz'

  There are potential patches and further diagnostics on
 the bug reports themselves which are respectively:

    https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=816271

    https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=816277

Steve
-- 
# Git Based DNS Hosting
https://www.dns-api.com
