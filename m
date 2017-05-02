X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["553" "Tuesday" "2" "May" "2017" "03:50:35" "+0000" "Steve Kemp" "steve@steve.org.uk" "<1493697035.1191.0@ssh.steve.org.uk>" "18" "Re: [oss-security] terminal emulators' processing of escape sequences" "^Cc:" nil nil "5" "2017050203:50:35" "[oss-security] terminal emulators' processing of escape sequences" (number mark "        steve@steve. May  2   18/553   " thread-indent "\"Re: [oss-security] terminal emulators' processing of escape sequences\"\n") "<20170501164428.GA12322@openwall.com>" ("<20170501164428.GA12322@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30264 invoked by uid 550); 2 May 2017 11:28:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16133 invoked from network); 2 May 2017 03:53:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=steve.org.uk; s=20150726;
	h=References:In-Reply-To:Message-ID:Date:Subject:From:Cc:To; bh=Vrsv6HCfkeFwOf/yUxKewOsYewBrqo3RyTpzwkZVb9Y=;
	b=GJKdPEvi42Z/rDATg0+G2MQTIlP4uQqZMKVKoZIFwS1ezZYGavWlnGLUpCkJc2MUClYdrqDXbcZ4YZnNgYA4Lu4dTDQhW1mUYK8SPvthL8Q5I9soyq/8f26r/mVBID2A/1bd5JFHrvY8zYlXnyR9RDhinTjHMgn4Ed340y/TlQ4=;
Message-ID: <1493697035.1191.0@ssh.steve.org.uk>
In-Reply-To: <20170501164428.GA12322@openwall.com>
References: <20170501164428.GA12322@openwall.com>
X-added-header: steve.org.uk
Cc: 
Date: Tue, 02 May 2017 03:50:35 +0000
From: Steve Kemp <steve@steve.org.uk>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] terminal emulators' processing of escape sequences
To: oss-security@lists.openwall.com


> Yves-Alexis Perez of Debian pointed out that whether these crashes occur
> or not may be related to the version of vte.  I'll leave it up to him to
> post a follow-up on that.

  The mention of vte reminded me of a security issue I reported a while 
 back in the evilvte emulator - shell execution via improper quotation
 handling in hyperlinks:

    https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=854585

  I didn't ask for a CVE ID because the process seems a bit more
 complicated these days, but perhaps topical.


Steve
-- 
https://steve.fi/
