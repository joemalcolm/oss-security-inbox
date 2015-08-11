X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["822" "Tuesday" "11" "August" "2015" "13:10:41" "+0000" "Jeremy Stanley" "jeremy@openstack.org" "<20150811131041.GI2732@openstack.org>" "21" "Re: [oss-security] CVE for crypto_get_random() from libsrtp" nil nil nil "8" "2015081113:10:41" "[oss-security] CVE for crypto_get_random() from libsrtp" (number mark "        jeremy@opens Aug 11   21/822   " thread-indent "\"Re: [oss-security] CVE for crypto_get_random() from libsrtp\"\n") "<55C9F162.8030700@redhat.com>" ("<55BB6E77.1070007@redhat.com>" "<CACYkhxiBvVbV-Xg-gM7ZdJzR=xaR2ta_OA-K6Lvftxvo9j3=uA@mail.gmail.com>" "<55C9A996.5090705@redhat.com>" "<20150811114801.GA2731@yuggoth.org>" "<55C9F162.8030700@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9405 invoked by uid 550); 11 Aug 2015 13:10:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9387 invoked from network); 11 Aug 2015 13:10:54 -0000
X-Sender-Id: jeremy@openstack.org
Message-ID: <20150811131041.GI2732@openstack.org>
References: <55BB6E77.1070007@redhat.com>
 <CACYkhxiBvVbV-Xg-gM7ZdJzR=xaR2ta_OA-K6Lvftxvo9j3=uA@mail.gmail.com>
 <55C9A996.5090705@redhat.com>
 <20150811114801.GA2731@yuggoth.org>
 <55C9F162.8030700@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55C9F162.8030700@redhat.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Tue, 11 Aug 2015 13:10:41 +0000
From: Jeremy Stanley <jeremy@openstack.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for crypto_get_random() from libsrtp
To: oss-security@lists.openwall.com

On 2015-08-11 14:58:10 +0200 (+0200), Adam Maris wrote:
> On 11/08/15 13:48, Jeremy Stanley wrote:
> > On 2015-08-11 09:51:50 +0200 (+0200), Adam Maris wrote:
> > [...]
> > > Unless CVE is assigned, we don't plan to ship any patch at the
> > > moment.
[...]
> > if a CVE is assigned for a bug you consider to have minimal
> > impact, do you release a patch for it anyway just because
> > there's a CVE?
[...]
> If a CVE is assigned for this issue, we will create an entry in
> our CVE database but the end result will likely be the same,
> wontfix.

That makes more sense. I read your initial "Unless CVE is assigned"
comment to mean that you were going to base your decision on whether
to distribute a fix on MITRE's classification process rather than on
your own due diligence. Thanks for clarifying!
-- 
Jeremy Stanley
