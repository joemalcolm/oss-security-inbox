X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1149" "Tuesday" "12" "May" "2020" "19:08:17" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.2005121907180.1451610@xnncv>" "23" "Re: [oss-security] CVE-2020-10711 Kernel: NetLabel: null pointer dereference while receiving CIPSO packet with null category" nil nil nil "5" "2020051213:38:17" "[oss-security] CVE-2020-10711 Kernel: NetLabel: null pointer dereference while receiving CIPSO packet with null category" (number mark "U       ppandit@redh May 12   23/1149  " thread-indent "\"Re: [oss-security] CVE-2020-10711 Kernel: NetLabel: null pointer dereference while receiving CIPSO packet with null category\"\n") "<nycvar.YSQ.7.76.2005121738440.1451610@xnncv>" ("<nycvar.YSQ.7.76.2005121738440.1451610@xnncv>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-10711 Kernel: NetLabel: null pointer dereference while receiving CIPSO packet with null category" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30106 invoked by uid 550); 12 May 2020 13:38:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30085 invoked from network); 12 May 2020 13:38:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589290706;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=CiqrOeh73xU22Afb0lzDNgZT4j3lnpKqg19CIFHUHHQ=;
	b=aR1rIs0GehPs1xHxDP55gQcYbG64+dFL/ifnHjMZ3BixZ+Ru2X1Whbt0Mg79XJOCx9Ob61
	mOtQo63pjIXgsUR2EOBcmZxrxschZ7OuQhjUcFXLAVg8Vu9jl6SZ4+/iyCy7dh/oye+Eqo
	WQQd4rhJ3Zigy++RzpsUcHBRRsA3dz0=
X-MC-Unique: 3BgsQt6GNi-5ytxLoYMl4Q-1
Date: Tue, 12 May 2020 19:08:17 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: Paolo Abeni <pabeni@redhat.com>, matthew.sheets@gd-ms.com, 
    Tyler Hicks <code@tyhicks.com>
In-Reply-To: <nycvar.YSQ.7.76.2005121738440.1451610@xnncv>
Message-ID: <nycvar.YSQ.7.76.2005121907180.1451610@xnncv>
References: <nycvar.YSQ.7.76.2005121738440.1451610@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [oss-security] CVE-2020-10711 Kernel: NetLabel: null pointer
 dereference while receiving CIPSO packet with null category

+-- On Tue, 12 May 2020, P J P wrote --+
| NULL pointer dereference(s) issue(s) was found in the Linux kernel's SELinux 
| subsystem. It occurs while importing the Commercial IP Security Option 
| (CIPSO) protocol's category bitmap into SELinux's extensible bitmap via 
| 'ebitmap_netlbl_import' routine. While parsing the CIPSO restricted bitmap 
| tag in 'cipso_v4_parsetag_rbm' routine, it sets the security attribute to 
| indicate that category bitmap is present, even if it has not been allocated. 
| This leads to the said NULL pointer dereference issue while importing the 
| same category bitmap into SELinux. A remote network user could use this flaw 
| to crash the system kernel resulting in DoS scenario.
|
| This issue was introduced by upstream commit:
|   -> https://git.kernel.org/linus/4b8feff251da3d7058b5779e21b33a85c686b974
|      netlabel: fix the horribly broken catmap functions

Upstream patch:
  -> https://lore.kernel.org/netdev/07d99ae197bfdb2964931201db67b6cd0b38db5b.1589276729.git.pabeni@redhat.com/T/#u

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

