X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2466" "Wednesday" "16" "August" "2017" "17:09:58" "-0700" "Russ Allbery" "eagle@eyrie.org" "<874lt7awbt.fsf@hope.eyrie.org>" "53" "Re: [oss-security] Insecure DNS dependency in many Kerberos deployments" "^Cc:" nil nil "8" "2017081700:09:58" "[oss-security] Insecure DNS dependency in many Kerberos deployments" (number mark "        eagle@eyrie. Aug 16   53/2466  " thread-indent "\"Re: [oss-security] Insecure DNS dependency in many Kerberos deployments\"\n") "<87ziazjhca.fsf@fifthhorseman.net>" ("<d3e0c378-10ac-4ac9-0b60-b5993308a058@redhat.com>" "<87y3qjcscp.fsf@hope.eyrie.org>" "<87ziazjhca.fsf@fifthhorseman.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9410 invoked by uid 550); 17 Aug 2017 12:48:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7273 invoked from network); 17 Aug 2017 00:10:11 -0000
In-Reply-To: <87ziazjhca.fsf@fifthhorseman.net> (Daniel Kahn Gillmor's message
	of "Wed, 16 Aug 2017 18:08:53 -0400")
Organization: The Eyrie
References: <d3e0c378-10ac-4ac9-0b60-b5993308a058@redhat.com>
	<87y3qjcscp.fsf@hope.eyrie.org> <87ziazjhca.fsf@fifthhorseman.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.2 (gnu/linux)
Message-ID: <874lt7awbt.fsf@hope.eyrie.org>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Florian Weimer <fweimer@redhat.com>,  oss-security@lists.openwall.com
Date: Wed, 16 Aug 2017 17:09:58 -0700
From: Russ Allbery <eagle@eyrie.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Insecure DNS dependency in many Kerberos deployments
To: Daniel Kahn Gillmor <dkg@fifthhorseman.net>

Daniel Kahn Gillmor <dkg@fifthhorseman.net> writes:
> On Wed 2017-08-16 10:52:54 -0700, Russ Allbery wrote:
>> Florian Weimer <fweimer@redhat.com> writes:

>>> As a rule of thumb, the impact is similar to running TLS with CA-based
>>> certificate validation, but without host name checks (but perhaps
>>> slightly less because the trust domains could be much smaller).

>> I think this overstates the impact somewhat.  This is more worrisome
>> with TLS because for most TLS applications there is a single global
>> trust domain with certificates issued by dozens or hundreds of parties
>> and no organizational scoping.

> fwiw, I think that's what Florian means by his parenthetical aside.

Yes, apologies, I should have noted that.

> While i understand the desire to be clear about the constrained scope of
> the risk, i think another way of saying what you're saying is "control
> over one service in a domain and the ability to poison the DNS allows
> that service operator to masquerade as any other service in the domain".

Well, it has to be a service of the same type.  If you can control the key
for host/foo.example.com and poison DNS, you can masquerade as
host/bar.example.com, but it does you no good for masquerading as
nfs/bar.example.com.  But yes, certainly still a bad thing.

> Even for domains where a single administrator controls all machines,
> this violates principles of privilege separation that admins rely on to
> be able to deploy potentially-buggy services without putting the other
> services at risk.

> So i think it's worth taking this seriously, despite(?) its age and
> widespread deployment.

Oh, certainly, I agree.

>> For the record, those are settings for *a* Kerberos client library, not
>> *the* Kerberos client library (specifically, the MIT Kerberos
>> implementation).  Heimdal does not use those settings, and there are
>> other Kerberos implementations as well.

> The fact that some client libraries *don't* do this should give us hope
> that it's fixable, even in existing deployments :)

Well... I'm not making the assertion that the implementations don't do
this, only that they don't support the same configuration options.  I
haven't verified how Heimdal handles DNS canonicalization, only that it
doesn't use those krb5.conf options.  It's more of an aside to warn people
that just turning off those options may not be adequate.

-- 
Russ Allbery (eagle@eyrie.org)              <http://www.eyrie.org/~eagle/>
