X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1016" "Friday" "22" "January" "2021" "05:37:22" "-0500" "Daniel Walsh" "dwalsh@redhat.com" "<807f9c58-ee87-c594-ea89-be816ac6d2ae@redhat.com>" "28" "Re: [oss-security] CVE-2020-35517 QEMU: virtiofsd: potential privileged host device access from guest" nil nil nil "1" "2021012210:37:22" "[oss-security] CVE-2020-35517 QEMU: virtiofsd: potential privileged host device access from guest" (number mark "U       dwalsh@redha Jan 22   28/1016  " thread-indent "\"Re: [oss-security] CVE-2020-35517 QEMU: virtiofsd: potential privileged host device access from guest\"\n") "<so4o1n2-r92q-8sn6-829r-qns5o0qo873@erqung.pbz>" ("<so4o1n2-r92q-8sn6-829r-qns5o0qo873@erqung.pbz>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-35517 QEMU: virtiofsd: potential privileged host device access from guest" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30102 invoked by uid 550); 22 Jan 2021 10:37:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30084 invoked from network); 22 Jan 2021 10:37:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1611311847;
	h=from:from:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=U0KF6k1e49PqMaFqbWk1u6ZmDFC98DF6EufGlwiwt/M=;
	b=aw0b7Al6LWDEwnsGGMtnONFgi01r910NPI1vKrQyWK3T6KPpw+u7BesqnhuaN2UvAxrr/n
	i0ogA9QS+kGK7WAQcgT+jzMdrA4arWYukGUdXi3aZsbBN1Tjzq6l5Mr+7Z84P8u+krKsh+
	Hnyo6kw8lXROvjx7hgyo5Y84g5mCYQU=
X-MC-Unique: mzU9vKotPLOIHc9UmGwqfQ-1
To: oss-security@lists.openwall.com
References: <so4o1n2-r92q-8sn6-829r-qns5o0qo873@erqung.pbz>
From: Daniel Walsh <dwalsh@redhat.com>
Organization: Red Hat
Message-ID: <807f9c58-ee87-c594-ea89-be816ac6d2ae@redhat.com>
Date: Fri, 22 Jan 2021 05:37:22 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <so4o1n2-r92q-8sn6-829r-qns5o0qo873@erqung.pbz>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=dwalsh@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Subject: Re: [oss-security] CVE-2020-35517 QEMU: virtiofsd: potential
 privileged host device access from guest

On 1/22/21 03:12, P J P wrote:
>   Hello,
>
> A potential host privilege escalation issue was found in the virtio-fs 
> shared file system daemon (virtiofsd) of the QEMU. Virtio-fs daemon 
> shares host directory tree with a guest VM. The said privilege 
> escalation scenario may occur if a privileged guest user was to create 
> device special file in the shared directory and use it to r/w access 
> host devices. A privileged guest user may use this flaw to arbitrarily 
> access (r/w) host files resulting in DoS scenario or may potentially 
> escalate privileges on the host.
>
> Upstream patch:
> ---------------
>   -> https://lists.gnu.org/archive/html/qemu-devel/2021-01/msg05461.html
>
> * This issue was reported by Alex Xu (CC'd).
>
> * 'CVE-2020-35517' assigned by Red Hat Inc.
>
> Thank you.
> -- 
> Prasad J Pandit / Red Hat Product Security Team
> 8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D
>
Did SELinux block this flaw?  Seems virtiofsd should be running without 
CAP_MKNOD by default.

