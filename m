X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1890" "Thursday" "18" "April" "2019" "19:00:58" "+0200" "Solar Designer" "solar@openwall.com" "<20190418170058.GA22985@openwall.com>" "46" "[oss-security] Linux kernel address leaks" "^Date:" nil nil "4" "2019041817:00:58" "[oss-security] Linux kernel address leaks" (number mark "        solar@openwa Apr 18   46/1890  " thread-indent "\"[oss-security] Linux kernel address leaks\"\n") "<CABXRUiQpWVeHYZeN_=P+n8ghVA=VWDPAeddpsZj38P0sZADeNA@mail.gmail.com>" ("<CABXRUiQpWVeHYZeN_=P+n8ghVA=VWDPAeddpsZj38P0sZADeNA@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Linux kernel address leaks" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11636 invoked by uid 550); 18 Apr 2019 17:01:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11278 invoked from network); 18 Apr 2019 17:01:04 -0000
Message-ID: <20190418170058.GA22985@openwall.com>
References: <CABXRUiQpWVeHYZeN_=P+n8ghVA=VWDPAeddpsZj38P0sZADeNA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CABXRUiQpWVeHYZeN_=P+n8ghVA=VWDPAeddpsZj38P0sZADeNA@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Date: Thu, 18 Apr 2019 19:00:58 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux kernel address leaks
To: oss-security@lists.openwall.com

Hi,

Fuqian just sent us all 13 of these in 2 days, and I guess there might
be many more to come.  Do we really want to see them in here?  And in
that many individual messages?  I doubt it - but not enough to have used
my moderator powers to outright reject the messages without discussion.

This in part depends on upstream Linux kernel's policy as to kernel
address leaks.  Are those treated as vulnerabilities or as not yet fully
completed kernel hardening effort?  I think it's the latter, in which
case such reports are better sent to the kernel-hardening mailing list.

Also, what's the current approach at dealing with them?  I haven't been
keeping track of that.  Is the kptr_restrict sysctl possibly supposed to
be sufficient, and %p format specifiers can stay intact?  If so, are
those many individual findings by Fuqian actually non-issues?

A proposed patch is generally better than a mere problem report, so if
the issues do need individual fixes, then:

I think these issues should be grouped by subsystem (one message per
subsystem) and sent in the form of proposed patches (fixing the issues
how exactly? need to discuss that first) to LKML and to proper
per-subsystem lists and addresses (per the MAINTAINERS file), CC'ing
kernel-hardening.

I'd appreciate it if someone currently involved in dealing with similar
issues comments on this in a reply-to-all to this message.

Thanks,

Alexander

On Tue, Apr 16, 2019 at 10:08:10AM +0800, Fuqian Huang wrote:
> In ascot2e_attach, dev_info will print the address of adapter to
> dmesg, sensitive kernel information will be leaked to user space.
> struct dvb_frontend *ascot2e_attach(struct dvb_frontend *fe,
>   const struct ascot2e_config *config,
>   struct i2c_adapter *i2c)
> {
>   ...
>   dev_info(&priv->i2c->dev,
>   "Sony ASCOT2E attached on addr=%x at I2C adapter %p\n",
>   priv->i2c_address, priv->i2c);
>   ...
> }
