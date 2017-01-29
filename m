X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["880" "Sunday" "29" "January" "2017" "13:14:25" "+0000" "Ion Ionescu" "netblue30@yahoo.com" "<1207006894.2769604.1485695665647@mail.yahoo.com>" "33" "[oss-security] Re: Firejail local root exploit" nil nil nil "1" "2017012913:14:25" "[oss-security] Re: Firejail local root exploit" (number mark "U       netblue30@ya Jan 29   33/880   " thread-indent "\"[oss-security] Re: Firejail local root exploit\"\n") "<20170104131248.GA28596@suse.de>" ("<20170104131248.GA28596@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1826 invoked by uid 550); 29 Jan 2017 13:22:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26150 invoked from network); 29 Jan 2017 13:17:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1485695836; bh=oiJUDy4sobSyCwzlfZ/hGvLFiqWv+wkVGi2K6XTUY/4=; h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject; b=gW1vCHnHJH/GBgrvJ5mgu3YG+c3Q5OFOoheLl6/wm1lvJODk77YYptcA1O+XkkSbw9GB2UGEIQH850YXZL1nSemws43R4fVRbcOXOCA8TIqUjGbURsdssZq8P5EhmSlgT5JAuOX1ESUn2pfBYWzHN/J4EJKqd5nOYFNBLZHA0HBiWmWmpXGnJussX5vZcv/sr8CMfMCNXo1zZF1uiliJ4CdNegP5zTLpbwGEdJxiBzrVsl0cjf2hE9AiRy9eSVhIc4A54zwwOOJ9FXsv3SrPFdAUXEvEB91n0KVTb07Iap3jH6JCtvNoSPoPeTC9LyZU810EdOsSPy1BmQJm+vAYhg==
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 332893.4978.bm@omp1055.mail.ne1.yahoo.com
X-YMail-OSG: kavWvtkVM1m2y7bBFGJnjLs1a2dcAwRw9n9aBkBPqtTpo7pTQFWmzgSvkAxYutt
 BZ0lkMwkgno0fU_Nv9cKj6x1.7FMAH0VHqLI0O6fUolCcy0LjvBL5ydYRO7Gv4lZrBqdQesohfTT
 .5ZNIw0izaa.soRImS29mdSxDYvDXgnRiajSr41McVnxWw1Cynd6EwYAlmt2yVYk3FSTF.uZLSp9
 SuCyxJcqt7Z_Ev.1mNKemvE_UFLAsdCYJeJgxgqO25sCTyETuV473vAw8rkRRRVG4VVo7I2dECIc
 OX1c4jJbXFeyCbGSkIjqkP_L03ovTv_oaZqYoM5YWVXCjbj3LT_zTcvcyHxeNVSaBw7ydxYZ4AH2
 oZzpgSjZKgJgov6psZ4xkD5sua.DbzMZGGSKCybjMhaf5J.X111W1Ab81XYgPOwWwB_W.vR1JC3D
 FyEm8JijGb.9fdvGLHxZMjZ9YeITLlXtIFcNvTfSnG0CneFV1bVJobq2LApck7N9pPosG_Vfueze
 fwK87BVeqlThjiMOn_JqRw6UULMTmRaNC.IBnplnY36G4
Date: Sun, 29 Jan 2017 13:14:25 +0000 (UTC)
From: Ion Ionescu <netblue30@yahoo.com>
To: Sebastian Krahmer <krahmer@suse.com>, 
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <1207006894.2769604.1485695665647@mail.yahoo.com>
In-Reply-To: <20170104131248.GA28596@suse.de>
References: <20170104131248.GA28596@suse.de>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_2769603_126837928.1485695665644"
Subject: [oss-security] Re: Firejail local root exploit

------=_Part_2769603_126837928.1485695665644
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello,
The first fix for CVE-2017-5180 in Firejail version 0.9.44.4 and 0.9.38.8 (LTS) was incomplete. Changing .Xauthority to .bashrc in the exploit code, the problem is still there - credit Sebastian Krahmer.
New releases are out: 0.9.44.8 and 0.9.38.10 (LTS). Please assign a new CVE.
Thank you,
Ion Ionescu

      From: Sebastian Krahmer <krahmer@suse.com>
 To: oss-security@lists.openwall.com 
Cc: netblue30@yahoo.com
 Sent: Wednesday, January 4, 2017 8:12 AM
 Subject: Firejail local root exploit
   
Hi

Please find attached PoC for firejail, which seems to be quite
popular sandboxing tool.

Sebastian

-- 

~ perl self.pl
~ $_='print"\$_=\47$_\47;eval"';eval
~ krahmer@suse.com - SuSE Security Team



   
------=_Part_2769603_126837928.1485695665644--
