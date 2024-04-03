Received: (qmail 9509 invoked by uid 550); 3 Apr 2024 13:48:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13422 invoked from network); 3 Apr 2024 13:29:58 -0000
Authentication-Results: mail.gathman.org; iprev=pass policy.iprev="2001:470:8:809::1010" (wiki.gathman.org); auth=pass (CRAM-MD5 sslbits=256) smtp.auth=stuart
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gathman.org; 
 i=@gathman.org; q=dns/txt; s=default; t=1712150978; 
 h=date : from : to : subject : in-reply-to : message-id : 
 references : mime-version : content-type : date : from : 
 subject; bh=6pQeuZ66XMOvRWIFT+x6iST9FsdJNZxLpT7TWWhK450=; 
 b=WwMfeUG3QSF/5mfyasWtS63PROfOsv7xcAqLFN5bvRZ8eXvk1ZWyafgC
 SDwhoo2z2RjGNHwXT14nhqu4WdIGf+Q9c/KGAa2Vg2OHKLdQnZFD0wTQKB
 4c0vW7EU6KFpX72mXsxZR1kh4wRD/LZGj1ZeCGb2MfLpueddu4Z5C/xUA=
Date: Wed, 3 Apr 2024 09:29:33 -0400 (EDT)
From: Stuart D Gathman <stuart@gathman.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
In-Reply-To: <loqt-RGEN6MMP_6J6pm7KJN3UgHgOBQ3NLoF3NsdmxQhyJrFIS0XYItBeLNZeSMliq69Lw8ogw3rnIW3BZEqCIHQQSFq307cqsyIt7dcocE=@proton.me>
Message-ID: <eaed1cdb-6bd2-b9e6-a0d2-ac1e464d71a5@gathman.org>
References: <loqt-RGEN6MMP_6J6pm7KJN3UgHgOBQ3NLoF3NsdmxQhyJrFIS0XYItBeLNZeSMliq69Lw8ogw3rnIW3BZEqCIHQQSFq307cqsyIt7dcocE=@proton.me>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
Subject: Re: [oss-security] xz backdoor prevention using hosts.deny?

On Wed, 3 Apr 2024, Nick Sal wrote:

> Assume we filter SSH access only to a public domain subnet using the files hosts.{deny,allow} as seen below.
> Would this prevent an attack if a malicious payload was *not* sent from the allowed subnet?

1. Clearnet IPs can be forged.  I use ips on IPv6 meshnets with
    authenticated IPs (Cjdns, yggdrasil, pinecone, etc).  In addition
    to an actually authenticated IP, the clearnet IP can be anywhere,
    so access while traveling is still supported.  Be sure to use disk
    encryption in case your laptop is lost/stolen (thereby compromising
    the private key to the authenticated IP).

2. hosts.allow/deny is not supported in many linux distros.  However,
    /etc/ssh/sshd_config allows:

    AllowUsers root@fce3:cb03:318e:5dd9:651a:5c2f:b09c:9d4e

    and so on for as many users@ips as are needed.  (fc00::/8 is the
    IPv6 net used by cjdns)
