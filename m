X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2803" "Monday" "27" "February" "2017" "13:07:06" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20170227120706.3entdizfnyz5iwrf@lorien.valinor.li>" "76" "[oss-security] Linux: CVE-2017-6353: sctp: deny peeloff operation on asocs with threads sleeping on it" nil nil nil "2" "2017022712:07:06" "[oss-security] Linux: CVE-2017-6353: sctp: deny peeloff operation on asocs with threads sleeping on it" (number mark "U       carnil@debia Feb 27   76/2803  " thread-indent "\"[oss-security] Linux: CVE-2017-6353: sctp: deny peeloff operation on asocs with threads sleeping on it\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8068 invoked by uid 550); 27 Feb 2017 12:07:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8050 invoked from network); 27 Feb 2017 12:07:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=cpO3Fd7L/UZWSCczN6rUp94llHfYae8q8XiKCvFh1fk=;
        b=CU/8soNuIB+PQZXV8Nn6FSqyB2xP3yk93weOp1djLJaH/okY8VZvhdXGsq7kT7O9R5
         BqBCn+kSJ37qfXDzC0FChM4o+OJikFqRBDNW0Nj2Kuc6aoX0ngLqHoH5j+43DOhJAxGb
         xpvVk/+ZmQzO3RSpApXakqSvOcATy4ReJy2eto+TOGkdnakEe37xO4kFLkOm9+I1QyZS
         agzT2hV20dc6+jsr1YB2opOqMRqzqz7Vt49eFmqxmji75ui85pE2EjtxYQrUt04dy2jt
         BpTcT2vpw96JibQiRht2z10wHKlM11Y0N3I1Y5CKcDJNqcP4hsYQTi8kJpa8ImH5SwDb
         aWMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=cpO3Fd7L/UZWSCczN6rUp94llHfYae8q8XiKCvFh1fk=;
        b=LWhTAIaWVY2lC3pla6kA4BolkEK1U6tvrqRbmzzQZdzshWm1cgW2sCd+yNd6sY8UnH
         Y7TaLkN0D51WDic0jfoh7QUoMKHZ+eVwv4eC+nLcZ0reyoOaRFGHEVXGkMFyF251qcvU
         YwDgaQi5HL6DDQobkyR0a7LZdpzY+QsoMl6M0bykWXNtEOcpnYsPz/bn3LfqSqTmLZdC
         2Tlb7a2rF1HLN+9GgRMVGv3SfkY7rbAHNzL3ptPeCl/oUvbYhaDjuTVBvP5PyGtLuhTd
         mwmRbCLdprgKl6OoKMt/xklrcd2Br1cMZHiYjdaBw6eCymhlT97kigPWGhjewx7koEl9
         6arg==
X-Gm-Message-State: AMke39nSFXk3utRaCU1FQgXDD/IbmuOMN9Yr0sPMuXT9fwd8dqvMb+bX0f0h2+rBtYrKCg==
X-Received: by 10.200.1.142 with SMTP id x14mr16151709qtf.170.1488197229573;
        Mon, 27 Feb 2017 04:07:09 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Mon, 27 Feb 2017 13:07:06 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20170227120706.3entdizfnyz5iwrf@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [oss-security] Linux: CVE-2017-6353: sctp: deny peeloff operation on asocs with
 threads sleeping on it

Hi

Via the CVE webform, MITRE has assigned CVE-2017-6353 for:

https://marc.info/?l=linux-netdev&m=148785309416337&w=2

>Subject:    [PATCH net] sctp: deny peeloff operation on asocs with threads sleeping on it
>From:       Marcelo Ricardo Leitner <marcelo.leitner () gmail ! com>
>Date:       2017-02-23 12:31:18
>
>commit 2dcab5984841 ("sctp: avoid BUG_ON on sctp_wait_for_sndbuf")
>attempted to avoid a BUG_ON call when the association being used for a
>sendmsg() is blocked waiting for more sndbuf and another thread did a
>peeloff operation on such asoc, moving it to another socket.
>
>As Ben Hutchings noticed, then in such case it would return without
>locking back the socket and would cause two unlocks in a row.
>
>Further analysis also revealed that it could allow a double free if the
>application managed to peeloff the asoc that is created during the
>sendmsg call, because then sctp_sendmsg() would try to free the asoc
>that was created only for that call.
>
>This patch takes another approach. It will deny the peeloff operation
>if there is a thread sleeping on the asoc, so this situation doesn't
>exist anymore. This avoids the issues described above and also honors
>the syscalls that are already being handled (it can be multiple sendmsg
>calls).
>
>Joint work with Xin Long.
>
>Fixes: 2dcab5984841 ("sctp: avoid BUG_ON on sctp_wait_for_sndbuf")
>Cc: Alexander Popov <alex.popov@linux.com>
>Cc: Ben Hutchings <ben@decadent.org.uk>
>Signed-off-by: Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>
>Signed-off-by: Xin Long <lucien.xin@gmail.com>
>---
>Hi, please consider this one for -stable too. Thanks
>
> net/sctp/socket.c | 8 ++++++--
> 1 file changed, 6 insertions(+), 2 deletions(-)
>
>diff --git a/net/sctp/socket.c b/net/sctp/socket.c
>index 1b5d669e30292a57ed57dd920d81be2a57f97b22..d04a8b66098c8a574642b026bff990ac64c21468 100644
>--- a/net/sctp/socket.c
>+++ b/net/sctp/socket.c
>@@ -4734,6 +4734,12 @@ int sctp_do_peeloff(struct sock *sk, sctp_assoc_t id, struct socket **sockp)
> 	if (!asoc)
> 		return -EINVAL;
> 
>+	/* If there is a thread waiting on more sndbuf space for
>+	 * sending on this asoc, it cannot be peeled.
>+	 */
>+	if (waitqueue_active(&asoc->wait))
>+		return -EBUSY;
>+
> 	/* An association cannot be branched off from an already peeled-off
> 	 * socket, nor is this supported for tcp style sockets.
> 	 */
>@@ -7426,8 +7432,6 @@ static int sctp_wait_for_sndbuf(struct sctp_association *asoc, long *timeo_p,
> 		 */
> 		release_sock(sk);
> 		current_timeo = schedule_timeout(current_timeo);
>-		if (sk != asoc->base.sk)
>-			goto do_error;
> 		lock_sock(sk);
> 
> 		*timeo_p = current_timeo;
>-- 
>2.9.3

This was found while reviewing the fix of CVE-2017-5986 (2dcab5984841
("sctp: avoid BUG_ON on sctp_wait_for_sndbuf"))

Regards,
Salvatore
