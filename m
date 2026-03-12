Received: (qmail 1825 invoked by uid 550); 12 Mar 2026 19:17:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22485 invoked from network); 12 Mar 2026 18:24:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=risingedge.co.za; s=xneelo; h=Content-Transfer-Encoding:Content-Type:
	Message-ID:Subject:To:From:Date:MIME-Version:reply-to:sender:cc:bcc:
	in-reply-to:references; bh=G8ojdc5tfmnsEDek5I4t29NH6VwoV6BAKzm8cGjTaVs=; b=np
	5HHP4hR9A+i2ECiEpAiys1CAT8HoAu6Cs0jo4b7we9hrNCSw6F7EQVYpOgB3nxqOItJduEDvulVez
	zegYoMjWZsHghhEL/vtjel6xAyQ2/qlGIz0G3TLLoGoLg+GJicR7TEQjuxKfwb/pOlG9QP8EbYH7m
	QpV1qVOPOYnn8rjXsYgyTB3Ig1oUzmA4NMs8joILPPieWGrKregsSSfyNp1L8bXiDAhGsZ0+80jPm
	zlvyzWV0IocfMLflv+UmmaRViGZCI6uw2tQ/mo4m4i3gMZqzGn07EbjIwbSErzStVL7u9r0IZ9VrJ
	4lkut56NXbIq1c3JbwrFgZTl2RXD80Yw==;
MIME-Version: 1.0
Date: Thu, 12 Mar 2026 20:24:42 +0200
From: Justin Swartz <justin.swartz@risingedge.co.za>
To: Oss Security <oss-security@lists.openwall.com>
Message-ID: <6d90b416fd9f2e4e8483885a480b390d@risingedge.co.za>
X-Sender: justin.swartz@risingedge.co.za
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Authenticated-Sender: justin.swartz@risingedge.co.za
X-Virus-Scanned: Clear
X-Originating-IP: 188.40.1.173
X-SpamExperts-Domain: risingedge.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net; auth=pass (login) smtp.auth=@risingedge.co.za
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.15)
X-Recommended-Action: accept
X-Filter-ID: 9kzQTOBWQUFZTohSKvQbgI7ZDo5ubYELi59AwcWUnuVzkKdCtcsyq2M+fj6t3NdnVaPuWW65IIT8
 lIUNtU+PTCu2SmbhJN1U9FKs8X3+Nt0Io1idSgCc/506nnISAkPANvJkKIxakGlbxi+ggiqZlxxH
 xN7wu8yGEPLNcyeaFTjhhiFqROrVHjMqi+HAAY7zBMmyNbDn7R5kilAhwr3KtFb3AgNUGvQRnUF+
 Lycvfx+SVUSshQka8VpEeqGYZUq9E9d2wzwQxbXkmlRlwduBj4hSnw9YyoGHx/ukuag1WKBLWDaO
 GAC1PCRtpOZuVuRfKVFCXTS2zVmMeFsPQMyMp5ya4EnB7foI3WDAWEIqQR42kI22V3+6/8VpCe4k
 l4rBro7NG5FMnAx+YiDY2J/czJYIiHqfCgG4wrA3w4/kQTaLfhXaMgiD0j3v6Ie9X8yyJClZqIWe
 ElTlhke8IyK52DdtyTpRDuDZactSZQHS5CIA4kv6jpHeL4itl5GdKHos6cTrAfIBtLJVe62uoyOA
 UhmSvC6qJad8oDRDO7zv2HyvHObXCPPKSd2xpqdSbP9LdDgGQETciExfV//6y6W7Dk3621qUIfzc
 FXeghALwUxUR37FaFlv3F2PbvabG99OCbPN7v9MApiZJ0jIuv2upMAEiRQv+PVjjwa+Z5RFCOMQ+
 rkssTV42UJ+1K8svYHitXuUtdBRw0CzMOyehQ6vQGEIcgDVon44OeqBIqwmKHddZzPImFuDj9wtn
 CHpNAoiDqeFMEyid5arI9OX88Mez1seXwD4BM2jQz1LojaPvzWFG78u4Z9swKs6X6s50biZUTMJ7
 bHbjQcSj2k6ROS/HeG5K61yXY75ytT3/xJ9H/2vj44kLYgpThR9mDPpIsMqDC1zMvjMU97iJTrCq
 DJU8eP4bw2RxeVx5WfYBV5Z0ipKtF1VPccloD2rUVRwpPdcTfqb5R4VemuUI6bcEARsm0MIEL6H2
 5DNnVReRKfCEH3VMuaKkhDGeWUGKiyBKYF6y5eh+QfFP7pcU8NRnbcMqdtqW+IuA05DGXjIjSPSU
 iMlahI4i4TNLKKi5WRMONPLcJy48BaQZ9dlwiO6d4xuBNw==
X-Report-Abuse-To: spam@antispamquarantine.host-h.net
X-Complaints-To: abuse@antispammaster.host-h.net
Subject: [oss-security] Remote Pre-Auth Buffer Overflow in GNU Inetutils telnetd (LINEMODE
 SLC)

Greetings,

I would like to draw the community's attention to the following
vulnerability [1], summarized as "Remote Pre-Auth Buffer Overflow
in GNU Inetutils telnetd (LINEMODE SLC)", which was reported to
the bug-inetutils mailing list recently.

I am not affiliated with the researchers, inetutils, nor GNU/FSF.

Regards,
Justin

---

[1] 
https://lists.gnu.org/archive/html/bug-inetutils/2026-03/msg00031.html
