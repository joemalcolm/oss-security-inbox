X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1005" "Monday" "22" "October" "2018" "23:42:21" "-0400" "Stuart D. Gathman" "stuart@gathman.org" "<1540266141.431.3@mail.gathman.org>" "30" "Re: [oss-security] Using quilt on untrusted RPM spec files" "^Date:" nil nil "10" "2018102303:42:21" "[oss-security] Using quilt on untrusted RPM spec files" (number mark "U       stuart@gathm Oct 22   30/1005  " thread-indent "\"Re: [oss-security] Using quilt on untrusted RPM spec files\"\n") "<20181018145729.dlq7sljlhevxa4xo@jwilk.net>" ("<20180927155934.GB8696@f195.suse.de>" "<c1946aa14addd525e5eb3f392eed26f119ad117a.camel@electronsweatshop.com>" "<20181018145729.dlq7sljlhevxa4xo@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1853 invoked by uid 550); 23 Oct 2018 10:23:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7171 invoked from network); 23 Oct 2018 03:42:33 -0000
Authentication-Results: mail.gathman.org; auth=pass (plain sslbits=256) smtp.auth=stuart
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gathman.org; 
 i=@gathman.org; q=dns/txt; s=default; t=1540266140; 
 h=date : from : subject : to : message-id : in-reply-to : 
 references : mime-version : content-type : date : from : 
 subject; bh=V47uGCPPTNs7Dgo027QSi+UhRdhcHHhABNEgOU+hxYo=; 
 b=IKF/+0nBeXU135QTKThFWGrqqTAMM5siRJE4tZco8TKjkqYJ82sJOzJz
 CB257ZxTB+yUsDlliACpAaABlX6xRLBQpbIWRQTXMillriBfxSyRUQ6kLN
 7/IdRQAnvXI8WjyI3LG4iVgyyALZ63PAN3vdcsomySBY4ybGkDlXzWVBo=
Message-Id: <1540266141.431.3@mail.gathman.org>
In-Reply-To: <20181018145729.dlq7sljlhevxa4xo@jwilk.net>
References: <20180927155934.GB8696@f195.suse.de>
	<c1946aa14addd525e5eb3f392eed26f119ad117a.camel@electronsweatshop.com>
	<20181018145729.dlq7sljlhevxa4xo@jwilk.net>
X-Mailer: geary/0.12.4
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-nmYkoltyIaGps7NZ9MVy"
Date: Mon, 22 Oct 2018 23:42:21 -0400
From: "Stuart D. Gathman" <stuart@gathman.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Using quilt on untrusted RPM spec files
To: oss-security@lists.openwall.com

--=-nmYkoltyIaGps7NZ9MVy
Content-Type: text/plain; charset=us-ascii; format=flowed



On Thu, Oct 18, 2018 at 10:57 AM, Jakub Wilk <jwilk@jwilk.net> wrote:
> * Randy Barlow <randy@electronsweatshop.com>, 2018-09-27, 22:39:
>> In Fedora we have similar challenges. We've got a tool called 
>> fedora-review[0] that is maybe kinda similar to quilt.
> 
> Quilt is a tool to manage patch series, so maybe not that similar. :-)

mock can run quilt also

> 
>> It uses mock[1] to build the source RPM (and mock does this in a 
>> chroot to help with the problems you described)
> 
> If it's really just chroot, then I'm afraid that's not a sufficient 
> protection. One can easily escape the chroot with ptrace(2).

Doesn't that escape require root?  Or at least a ptraceable process 
(i.e. with the same uid) outside the chroot?

Not that I'd stake anything really important on current container 
security...  (And even VMs are vulnerable to the latest round of 
hardware bugs.)

--=-nmYkoltyIaGps7NZ9MVy--

