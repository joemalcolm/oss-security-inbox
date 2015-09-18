X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4091" "Friday" "18" "September" "2015" "15:19:12" "+0200" "Olaf Kirch" "okir@suse.com" "<201509181519.12824.okir@suse.com>" "118" "Re: [oss-security] Re: CVE Request: remote triggerable use-after-free in rpcbind" nil nil nil "9" "2015091813:19:12" "[oss-security] Re: CVE Request: remote triggerable use-after-free in rpcbind" (number mark "        okir@suse.co Sep 18  118/4091  " thread-indent "\"Re: [oss-security] Re: CVE Request: remote triggerable use-after-free in rpcbind\"\n") "<55FB1EAD.4050600@RedHat.com>" ("<20150917122333.GB23283@suse.de>" "<55FB1EAD.4050600@RedHat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28108 invoked by uid 550); 18 Sep 2015 13:38:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18273 invoked from network); 18 Sep 2015 13:19:25 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
User-Agent: KMail/1.12.4 (Linux/3.0.101-0.47.55-default; KDE/4.3.5; x86_64; ; )
References: <20150917122333.GB23283@suse.de> <55FB1EAD.4050600@RedHat.com>
In-Reply-To: <55FB1EAD.4050600@RedHat.com>
MIME-Version: 1.0
Content-Type: Multipart/Mixed;
  boundary="Boundary-00=_Q9A/VpQr2DycBiQ"
Message-Id: <201509181519.12824.okir@suse.com>
Cc: Steve Dickson <SteveD@redhat.com>,
 Marcus Meissner <meissner@suse.de>
Date: Fri, 18 Sep 2015 15:19:12 +0200
From: Olaf Kirch <okir@suse.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: remote triggerable use-after-free in rpcbind
To: oss-security@lists.openwall.com

--Boundary-00=_Q9A/VpQr2DycBiQ
Content-Type: Text/Plain;
  charset="windows-1252"
Content-Transfer-Encoding: quoted-printable


Hi Steve,

On Thursday 17 September 2015 22:12:29 Steve Dickson wrote:
> In Olaf's patch there is a call to __rpc_set_netbuf() which is
> not visible in the upstream libtirpc lib... Did  Olaf roll his own
>  or changed libtirpc to make it visible?

Originally, I was going to use the one from libtirpc. But then I=20
reconsidered because it's too ugly, and inlined a copy of it. See the=20
attached patch which I submitted to SLES.

Regards,
Olaf
--=20
It is better to keep your mouth closed and let people think you are a
fool than to open it and remove all doubt.     -- Mark Twain
--------------------------------------------
Olaf Kirch - Director SUSE Linux Enterprise; R&D (okir@suse.com)
SUSE Linux GmbH, Maxfeldstr. 5, 90409 N=FCrnberg, Germany
GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton, HRB 21284 (AG=20
N=FCrnberg)=20

--Boundary-00=_Q9A/VpQr2DycBiQ
Content-Type: text/x-patch;
  charset="UTF-8";
  name="bug-940191.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="bug-940191.patch"

commit 06f7ebb1dade2f0dbf872ea2bedf17cff4734bdd
Author: Olaf Kirch <okir@suse.de>
Date:   Thu Aug 6 16:27:20 2015 +0200

    Fix memory corruption in PMAP_CALLIT code
    
     - A PMAP_CALLIT call comes in on IPv4 UDP
     - rpcbind duplicates the caller's address to a netbuf and stores it in
       FINFO[0].caller_addr. caller_addr->buf now points to a memory region A
       with a size of 16 bytes
     - rpcbind forwards the call to the local service, receives a reply
     - when processing the reply, it does this in xprt_set_caller:
         xprt->xp_rtaddr = *FINFO[0].caller_addr
       It sends out the reply, and then frees the netbuf caller_addr and
       caller_addr.buf.
       However, it does not clear xp_rtaddr, so xp_rtaddr.buf now refers
       to memory region A, which is free.
     - When the next call comes in on the UDP/IPv4 socket, svc_dg_recv will
       be called, which will set xp_rtaddr to the client's address.
       It will reuse the buffer inside xp_rtaddr, ie it will write a
       sockaddr_in to region A
    
    Some time down the road, an incoming TCP connection is accepted,
    allocating a fresh SVCXPRT. The memory region A is inside the
    new SVCXPRT
    
     - While processing the TCP call, another UDP call comes in, again
       overwriting region A with the client's address
     - TCP client closes connection. In svc_destroy, we now trip over
       the garbage left in region A
    
    We ran into the case where a commercial scanner was triggering
    occasional rpcbind segfaults. The core file that was captured showed
    a corrupted xprt->xp_netid pointer that was really a sockaddr_in.
    
    Signed-off-by: Olaf Kirch <okir@suse.de>

---
 src/rpcb_svc_com.c |   23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

Index: rpcbind-0.1.6+git20080930/src/rpcb_svc_com.c
===================================================================
--- rpcbind-0.1.6+git20080930.orig/src/rpcb_svc_com.c
+++ rpcbind-0.1.6+git20080930/src/rpcb_svc_com.c
@@ -1298,12 +1298,33 @@ check_rmtcalls(struct pollfd *pfds, int
 	return (ncallbacks_found);
 }
 
+/*
+ * This is really a helper function defined in libtirpc, but unfortunately, it hasn't
+ * been exported yet.
+ */
+static struct netbuf *
+__rpc_set_netbuf(struct netbuf *nb, const void *ptr, size_t len)
+{
+	if (nb->len != len) {
+		if (nb->len)
+			mem_free(nb->buf, nb->len);
+		nb->buf = mem_alloc(len);
+		if (nb->buf == NULL)
+			return NULL;
+
+		nb->maxlen = nb->len = len;
+	}
+	memcpy(nb->buf, ptr, len);
+	return nb;
+}
+
 static void
 xprt_set_caller(SVCXPRT *xprt, struct finfo *fi)
 {
+	const struct netbuf *caller = fi->caller_addr;
 	u_int32_t *xidp;
 
-	*(svc_getrpccaller(xprt)) = *(fi->caller_addr);
+	__rpc_set_netbuf(svc_getrpccaller(xprt), caller->buf, caller->len);
 	xidp = __rpcb_get_dg_xidp(xprt);
 	*xidp = fi->caller_xid;
 }

--Boundary-00=_Q9A/VpQr2DycBiQ--
