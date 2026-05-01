Received: (qmail 32675 invoked by uid 550); 1 May 2026 17:12:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17859 invoked from network); 1 May 2026 16:51:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=risingedge.co.za; s=xneelo; h=Content-Transfer-Encoding:Bcc:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:To:From:reply-to:sender:cc:
	content-type; bh=903EVuChwcUVy3zOLEPWNQOf8ga3izadKjuMFBfjW0M=; b=I1RNs+ncRe7H
	KY1rfppwNh5Qi6JC2asbtX4BZ/BTqX9wtfUDBKbIUc9yWspGpeJFljCkk59hnzaqmoBQXb9AYWTdW
	fMHyMtRaVErhsFttjwLGfPm5rFRP1k95vlr34q6EkCmasShziHyGPJxdOf0AWawwve+eRdNC2kjF0
	Oe8yoERtfy+UIFRHAKaZTNseRga9MLoX/CPhVp05YeOZpwATktPue5UKdZZrWCP0Q0ZG5gS7kRDGv
	worWZ5MY4w1QADaBgK2dDi3eHqyzhiss5F26N8ZZDmi0Kn1w9mmwg52ChWqZVV0k4C+1X2FhTmRoe
	DTQeKBwB2eouw3Oj/SWuIg==;
From: Justin Swartz <justin.swartz@risingedge.co.za>
To: oss-security@lists.openwall.com
Date: Fri,  1 May 2026 18:52:19 +0200
Message-Id: <20260501165221.27420-1-justin.swartz@risingedge.co.za>
In-Reply-To: <315f9a67337d8e930cfb95a4b644946bf2f69687.camel@thirddimension.net>
References: <afJorKIje4O6dXbH@netmeister.org> <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net> <87se8dgicq.fsf@gentoo.org> <afL-QhLfEKqHZqka@eldamar.lan> <2026043026-treat-devotion-23d7@gregkh> <CAPmip_zqswCZ6PfnW_DPEoSuY6Jewfw1eyeP_azYH4JFgRipNA@mail.gmail.com> <12a8c210-2f79-4fa2-a9c6-bbd203325f42@oracle.com> <315f9a67337d8e930cfb95a4b644946bf2f69687.camel@thirddimension.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Sender: justin.swartz@risingedge.co.za
X-Virus-Scanned: Clear
X-Originating-IP: 188.40.1.173
X-SpamExperts-Domain: risingedge.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net; auth=pass (login) smtp.auth=@risingedge.co.za
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.03)
X-Recommended-Action: accept
X-Filter-ID: 9kzQTOBWQUFZTohSKvQbgI7ZDo5ubYELi59AwcWUnuWw8qj3//FKmfrjzsLBLTEbGG+a8WmFNtaX
 7bqdsv6sUSu2SmbhJN1U9FKs8X3+Nt0Io1idSgCc/506nnISAkPANvJkKIxakGlbxi+ggiqZlxxH
 xN7wu8yGEPLNcyeaFThLht9RW9ZusvAkMUu9zeo0BMmyNbDn7R5kilAhwr3KtFb3AgNUGvQRnUF+
 Lycvfx+SVUSshQka8VpEeqGYZUq9x6uBPuq+Gm7dtLrcVMrJoohSnw9YyoGHx/ukuag1WKCaQS9E
 zrNt4RDoLk/DvkzRKVFCXTS2zVmMeFsPQMyMp5ya4EnB7foI3WDAWEIqQR42kI22V3+6/8VpCe4k
 l4rBro7NG5FMnAx+YiDY2J/czJYIiHqfCgG4wrA3w4/kQTaLfhXaMgiD0j3v6Ie9X8yyJClZqIWe
 ElTlhke8IyK52DdtyTpRDuDZactSZQHS5CIA4kv6jpHeL4itl5GdKHos6cTrAfIBtLJVe62uoyOA
 UhmSvC6qJad8oDRDO7zv2HyvHObXCPPKSd2xpqdSbP9LdDgGQETciExfV//6y6W7Dk3621qUIfzc
 FXeghALwUxUR37FaFlv3F2PbvabG99OCbPN7v9MApiZJ0jIuv2upMAEiRQv+PVjjwa+Z5RFCOMQu
 z9knZhBaoF6Lw1fiOpu7XuUtdBRw0CzMOyehQ6vQGEQpYEYddjOcPBNniis1CyVZzPImFuDj9wtn
 CHpNAoiDqeFMEyid5arI9OX88Mez1seXwD4BM2jQz1LojaPvzWFG78u4Z9swKs6X6s50biZUTMJ7
 bHbjQcSj2k6ROS/HeG5K61yXY75ytT3/xJ9H/2sFUQa5nonzdPpu3jhiX5e64/dKv8vj/xNTb/z/
 Z6X5Fv4bw2RxeVx5WfYBV5Z0ipKtF1VPccloD2rUVRwpPdcTfqb5R4VemuUI6bcEARsm0MIEL6H2
 5DNnVReRKfCEH3VMuaKkhDGeWUGKiyBKYF6y5eh+QfFP7pcU8NRnbcMqdtqW+IuA05DGXjIjSPSU
 iMlahI4i4TNLKKi5WRMONPLcJy48BaQZ9dlwiO6d4xuBNw==
X-Report-Abuse-To: spam@antispamquarantine.host-h.net
X-Complaints-To: abuse@antispammaster.host-h.net
Subject: [oss-security] Re: CVE-2026-31431: CopyFail: linux local privilege scalation

On Fri, 2026-05-01 at 11:08 -0400, Reid Sutherland wrote:
> Does anything load the vulnerable module by default or not?  If not,
> this should be low-rated IMO.

An unprivileged user requesting an AF_ALG socket will trigger the kernel
module autoloader:

$ su -l
Password:

# cat > /root/modprobe << "EOF"
#!/bin/sh
echo "$(date -u) modprobe $@" >> /tmp/modprobe.log
exec /sbin/modprobe "$@"
EOF

# chmod 700 /root/modprobe

# cat /proc/sys/kernel/modprobe
/sbin/modprobe

# echo "/root/modprobe" > /proc/sys/kernel/modprobe
# cat /proc/sys/kernel/modprobe
/root/modprobe

# exit

$ lsmod | grep aead | wc -l
0

$ date -u && ./copy_fail_exp.py
Fri 01 May 2026 16:08:24 UTC

# cat /tmp/modprobe.log
Fri May  1 16:08:24 UTC 2026 modprobe -q -- net-pf-38
Fri May  1 16:08:24 UTC 2026 modprobe -q -- algif-aead

# lsmod | grep aead
algif_aead             16384  0
af_alg                 36864  1 algif_aead

# echo "/sbin/modprobe" > /proc/sys/kernel/modprobe
# cat /proc/sys/kernel/modprobe
/sbin/modprobe

# exit
