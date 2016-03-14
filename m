X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["927" "Monday" "14" "March" "2016" "12:45:06" "+0000" "Steve Kemp" "steve@steve.org.uk" "<1457959506.22729.0@ssh.steve.org.uk>" "27" "Re: [oss-security] CVE-Request - GNU Awk." "^Date:" nil nil "3" "2016031412:45:06" "[oss-security] CVE-Request - GNU Awk." (number mark "        steve@steve. Mar 14   27/927   " thread-indent "\"Re: [oss-security] CVE-Request - GNU Awk.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 4006 invoked by uid 550); 14 Mar 2016 12:47:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3985 invoked from network); 14 Mar 2016 12:47:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=steve.org.uk; s=20150726;
	h=Content-Type:MIME-Version:Date:Message-ID:Subject:From:To; bh=s5Izp8/w5eBgmZOhmR/29ZlPZrXPxBe0epJKMVQmUj0=;
	b=WJIEY8pVUkKguhUKArN9nvtrIocDd9Cw/gpaHg7peohUku09AUKEQila6Zmt7qYsKGUDNqsFiZ+6/GXFir2eTMCpvZe3+ekBAxB2tDykIBcBFtKuwt7fHBXXsTMDRwZ75Heb538dmYQE1YTX70VE2rjWMBvWkPcxRbcEtUIz0ew=;
Message-ID: <1457959506.22729.0@ssh.steve.org.uk>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="=-fMSJsWE5EVDCJFliJMsH"
X-added-header: steve.org.uk
Date: Mon, 14 Mar 2016 12:45:06 +0000
From: Steve Kemp <steve@steve.org.uk>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-Request - GNU Awk.
To: oss-security@lists.openwall.com

--=-fMSJsWE5EVDCJFliJMsH
Content-Type: text/plain; charset=UTF-8

> Why should these get a CVE?  As you state in one of your reports:
> 
> > While I appreciate that passing untrusted code to gawk is not a
> > common thing to do, I do not believe that it should be possible to
> > trigger a segfault though.
> 
> Why should that be considered a valid / safe use case at all?  If
> something makes awk run untrusted programs, there's code execution
> problem already:

  While I suspect there is virtually no situation whereby a service
 would allow the upload/processing of arbitrary awk in the wild, I
 do believe that no (semi)valid program should terminate the intepreter
 with a segfault.

  That is the reason why I believe that that it is worthy of an
 identifier.  Though I will avoid making future requests for similar
 issues if I'm alone in that belief!

Steve
-- 
http://www.steve.org.uk/

--=-fMSJsWE5EVDCJFliJMsH--
