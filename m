X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["564" "Monday" "22" "October" "2018" "23:33:38" "-0400" "Stuart D. Gathman" "stuart@gathman.org" "<1540265618.431.2@mail.gathman.org>" "13" "Re: [oss-security] Using quilt on untrusted RPM spec files" "^Date:" nil nil "10" "2018102303:33:38" "[oss-security] Using quilt on untrusted RPM spec files" (number mark "        stuart@gathm Oct 22   13/564   " thread-indent "\"Re: [oss-security] Using quilt on untrusted RPM spec files\"\n") "<20181022182638.uja7q6jhxn5md36n@jwilk.net>" ("<20180927155934.GB8696@f195.suse.de>" "<20181022182638.uja7q6jhxn5md36n@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1713 invoked by uid 550); 23 Oct 2018 10:23:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30492 invoked from network); 23 Oct 2018 03:33:53 -0000
Authentication-Results: mail.gathman.org; auth=pass (plain sslbits=256) smtp.auth=stuart
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gathman.org; 
 i=@gathman.org; q=dns/txt; s=default; t=1540265618; 
 h=date : from : subject : to : message-id : in-reply-to : 
 references : mime-version : content-type : date : from : 
 subject; bh=gHs3RlPb2jrGT24pmz1CNRaRMMfBZ5QYW7npR4S0fEA=; 
 b=aVAGy853UH1YIuj6eRtlVNWPA5dKjhz5ULpodUWr2iE+eo7CByWgeocQ
 CUyXfi7u3OQsWaKuHwM5LiEl5uH9Q6n0uN2CtgBB6BBOqGgjhH8a6QbtP3
 9TTL6cJWKtcvEwiU6d/vhwtQsrM7BMWJc0+w5t2lnXDBcx+YAqptF7+xI=
Message-Id: <1540265618.431.2@mail.gathman.org>
In-Reply-To: <20181022182638.uja7q6jhxn5md36n@jwilk.net>
References: <20180927155934.GB8696@f195.suse.de>
	<20181022182638.uja7q6jhxn5md36n@jwilk.net>
X-Mailer: geary/0.12.4
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-E9exicDDkSkuZY8Ro5VF"
Date: Mon, 22 Oct 2018 23:33:38 -0400
From: "Stuart D. Gathman" <stuart@gathman.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Using quilt on untrusted RPM spec files
To: oss-security@lists.openwall.com

--=-E9exicDDkSkuZY8Ro5VF
Content-Type: text/plain; charset=us-ascii; format=flowed

Fedora avoids the problem by running rpmbuild in a chroot mini 
container (provided by systemd) as the mockbuild user with no network 
access - this extracts source, does %prep, etc.   This is done with the 
'mock' utility.  The reviewer can still examine the prepped source in 
the host filesystem.  The reviewer can also run commands inside the 
mock chroot container, install additional packages (like vim), get a 
shell inside the container, etc.

--=-E9exicDDkSkuZY8Ro5VF--

