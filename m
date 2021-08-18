X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2428" "Wednesday" "18" "August" "2021" "10:26:12" "-0500" "Eric Blake" "eblake@redhat.com" nil "49" "Re: [oss-security] STARTTLS vulnerabilities" "^Date:" nil nil "8" nil nil (number mark "        eblake@redha Aug 18   49/2428  " thread-indent "\"Re: [oss-security] STARTTLS vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] STARTTLS vulnerabilities" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9255 invoked by uid 550); 18 Aug 2021 15:26:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9237 invoked from network); 18 Aug 2021 15:26:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1629300378;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NtT/e7jbsPggXw0MOZZbVo3kIGLizk6/A/WfY+/4E0s=;
	b=eewcNKsXRbFDXOwLsg+DZUj4E7S6+j7B21/knbG443HwdeMXPrnRhTzgqawOcT4bWT1SPA
	z6/ErbNWQt9OUECc8ph2gxZRAXgibPd0BFPmsWewHZUiR9o1z/0JdD7I3+jdd5tAXrP1GB
	4VUbAw2vGgVDQiKJhV0vH+BjtUFjO28=
X-MC-Unique: wF8F7sYXMUC4sdDdLQlIdw-1
Message-ID: <20210818152612.5v3noomg4xt4a6pi@redhat.com>
References: <20210810122113.3fe65cc9@computer>
 <20210810134156.GF1599104@hal>
 <20210811081634.15143171@computer>
 <20210811153158.gt6uk4qqaqw7lzo2@redhat.com>
 <20210811180235.65375940@computer>
 <20210816190406.fmt3myvwvycywfv4@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20210816190406.fmt3myvwvycywfv4@redhat.com>
User-Agent: NeoMutt/20210205-719-68949a
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=eblake@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Date: Wed, 18 Aug 2021 10:26:12 -0500
From: Eric Blake <eblake@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] STARTTLS vulnerabilities
To: oss-security@lists.openwall.com

On Mon, Aug 16, 2021 at 02:04:06PM -0500, Eric Blake wrote:
> On Wed, Aug 11, 2021 at 06:02:35PM +0200, Hanno Böck wrote:
> > On Wed, 11 Aug 2021 10:31:58 -0500
> > Eric Blake <eblake@redhat.com> wrote:
> > 
> > > Not mentioned in that list was ndb, but as far as I can tell, that
> > > project has already documented the ramifications of opportunistic
> > > encryption as being a security risk, and all known implementations
> > > (both servers and clients) with TLS support have a mode of execution
> > > that ensures the connection is dropped if a downgrade attack is
> > > attempted:
> > 
> > I should point out that our research is not on simple downgrade attacks.
> > These are kinda obvious by the design of STARTTLS if you implement it
> > in an opportunistic way.
> > 
> > The buffering vulnerabilities we found are in STARTTLS implementations
> > that have the expectation to enforce a secure connection, but suffer
> > from various vulnerabilities in the implementation.
> 
> Thank you for persisting.  As a result, I have found a security bug in
> nbdkit, which improperly cached the result of NBD_OPT_STRUCTURED_REPLY
> from a plaintext MitM attacker prior to acting on NBD_OPT_STARTTLS, to
> the potential confusion of a client that does not expect structured
> replies.  I will follow up again when I have a CVE number.
> 
> https://listman.redhat.com/archives/libguestfs/2021-August/msg00077.html

Now designated as CVE-2021-3716, affecting nbdkit versions 1.12
through 1.26.4; fixed nbdkit 1.26.5 will be released later today.

Mitigating factors: the bug is only possible when nbdkit is used in
opportunistic mode (--tls=on); you can avoid it by requesting that
nbdkit use forced tls mode (--tls=require on the command line).
Furthermore, all impacted nbdkit versions give successful replies to
repeated NBD_OPT_STRUCTURED_REPLY requests even though the NBD
protocol did not mandate that, so any client that requests structured
replies after STARTTLS will not see any change in behavior in spite of
the MitM injection.  In short, the bug will only impact really old
clients that understand TLS but not structured replies (at this point,
I'm aware of qemu 2.6 through 2.10, where most distros have moved to
newer versions of qemu; and all versions of nbd-client 3.15 to the
present).

-- 
Eric Blake, Principal Software Engineer
Red Hat, Inc.           +1-919-301-3266
Virtualization:  qemu.org | libvirt.org

