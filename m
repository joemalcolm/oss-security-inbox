X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1218" "Wednesday" "11" "August" "2021" "10:31:58" "-0500" "Eric Blake" "eblake@redhat.com" nil "40" "Re: [oss-security] STARTTLS vulnerabilities" "^Date:" nil nil "8" nil nil (number mark "        eblake@redha Aug 11   40/1218  " thread-indent "\"Re: [oss-security] STARTTLS vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] STARTTLS vulnerabilities" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29803 invoked by uid 550); 11 Aug 2021 15:32:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29785 invoked from network); 11 Aug 2021 15:32:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628695927;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FoUX7Gvl2eidJu+COg9Q0j7+sZyktVVBVwYUjNhq4tE=;
	b=Kw9c3LIOZ03UeaQh0U2MCKQ9e2wLb8FL0h3FNKi1xutbak0/JEHlzRMcMGBHJ2BufHbY9u
	3MjIrQC7Po/+Eet/MMB9n552DxL8DPEOg4vDxuY2JKuttWwshIi++drwWZ8JLqfKDEcqG0
	G1rtmRhAdnHfxJYz4es+cpbcUS9K+e8=
X-MC-Unique: uxKuNnVXOiyTmqZI-MHlPQ-1
Message-ID: <20210811153158.gt6uk4qqaqw7lzo2@redhat.com>
References: <20210810122113.3fe65cc9@computer>
 <20210810134156.GF1599104@hal>
 <20210811081634.15143171@computer>
MIME-Version: 1.0
In-Reply-To: <20210811081634.15143171@computer>
User-Agent: NeoMutt/20210205-687-0ed190
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=eblake@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Date: Wed, 11 Aug 2021 10:31:58 -0500
From: Eric Blake <eblake@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] STARTTLS vulnerabilities
To: oss-security@lists.openwall.com

On Wed, Aug 11, 2021 at 08:16:34AM +0200, Hanno Böck wrote:
> Of course it's a very obvious idea for further research to look if one
> finds similar vulnerabilities to the ones we found in other protocols.
> So I'd really like to encourage other people to look for this.
> 
> FWIW there are a lot of protocols with a STARTTLS mechanism, here's the
> list of supported protocols by OpenSSL:
> 	smtp
> 	pop3
> 	imap
> 	ftp
> 	xmpp
> 	xmpp-server
> 	telnet
> 	irc
> 	mysql
> 	postgres
> 	lmtp
> 	nntp
> 	sieve
> 	ldap

Not mentioned in that list was ndb, but as far as I can tell, that
project has already documented the ramifications of opportunistic
encryption as being a security risk, and all known implementations
(both servers and clients) with TLS support have a mode of execution
that ensures the connection is dropped if a downgrade attack is
attempted:

https://github.com/NetworkBlockDevice/nbd/blob/master/doc/proto.md#security-considerations
https://lists.debian.org/nbd/2021/08/msg00031.html

But I welcome review from those with more experience from the security
side of things.

-- 
Eric Blake, Principal Software Engineer
Red Hat, Inc.           +1-919-301-3266
Virtualization:  qemu.org | libvirt.org

