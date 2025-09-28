Received: (qmail 18176 invoked by uid 550); 28 Sep 2025 15:42:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1181 invoked from network); 28 Sep 2025 15:39:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=herricane.ca; s=default; h=Content-Transfer-Encoding:Content-Type:
	Message-ID:References:In-Reply-To:Subject:To:From:Date:MIME-Version:Sender:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=LFQ1lzdzhlzdum4omqqncduoRxcoDBK+vQXcfVN4ZJA=; b=WR8erjjlunM1tyZjYTJtL5SnxN
	BcWJTUsuwBt6YiKbG23zZNs0mc2bOc1lX10SznUZ3ebtPIVHQ4msHHelo/EsL94DSDk3+u8L98bl9
	GltyD3rwqnJmy2fSMHhVaIVF8yYb89WASuAqI/RcLOOPkyr7+Wht9b86r561lfFjN/cV7WUgH8rlI
	XFjO40Ox6FvHNn04QaEqpdHGhkMSB5t/1sJ2BR+A5l2acJyzJrzcG1PUaFDiNWq8ByHacmbahGpSv
	++ft6HC2Ux43uKFiYrcQknOcFsRZar4nNaPfxYZynsCKsGjM0y8dRj48vSs7GgWgU6Ihz3Oun7Bgb
	x11mj6Dw==;
MIME-Version: 1.0
Date: Sun, 28 Sep 2025 11:39:23 -0400
From: Katie <katie@herricane.ca>
To: oss-security@lists.openwall.com
In-Reply-To: <aNlRCNC4_Jys33iA@yuggoth.org>
References: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com>
 <20250927214013.GA9163@openwall.com>
 <CAFf+5ziVBQ-xk=VQdrbnhgzdu1gu==ZQSrhBGj7PEq6mcOVVAw@mail.gmail.com>
 <aNlRCNC4_Jys33iA@yuggoth.org>
User-Agent: Roundcube Webmail/1.6.11
Message-ID: <2adc239e81a272808e42f4be59479343@herricane.ca>
X-Sender: katie@herricane.ca
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: 51.161.115.83
X-SpamExperts-Domain: out.mailpro2.whc.ca
X-SpamExperts-Username: 51.161.115.83
Authentication-Results: web-dns1.com; auth=pass smtp.auth=51.161.115.83@out.mailpro2.whc.ca
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.15)
X-Recommended-Action: accept
X-Filter-ID: 9kzQTOBWQUFZTohSKvQbgI7ZDo5ubYELi59AwcWUnuVzkKdCtcsyq2M+fj6t3NdnVaPuWW65IIT8
 lIUNtU+PTCu2SmbhJN1U9FKs8X3+Nt0RO5ts8sca2iwkxXjGoQrycdsS/K0WfPyaaqqAEeqiutcV
 PSoHm0W/3adFfiYl2nsdibJ06/OOlyVceQbE/KzY0xFuTxT4zj7FZjRutUGTvzFyLdg06ZXED6UM
 nC21Pwe5VKCmY71Q8rpziSs1z3EmSWDshiesHrcEYBdmJouoxYHVk96emT+AZZiFE3SvFSxLV2X/
 3wnXUyDVGAbHopQqACkJUHU38G0nImq/tiQjLLS3+BvyeXgHepft495FCqN6E5JqhSWdWpr9L2bu
 lXmia/8Uon9wny37HD2R7t0vN9D24m2/y9IKUWP7z6pmKVXQuoj4uAALoxT8jVnYX3cDPfLi+tUq
 EWFwO9WZ9ZslDBGE3MqH1GuGi/5k++Cs4cIB4BzfgSOdfrbzWOGBisJW31/E3ahF5MMcDI7KdpjQ
 KTg+JCkfKD/ivi53r0DEEjdYKEtzJCEksnUuhAOykqB2RzjSgN+Ml6WkNvJzLqQmE8SLLpEkwSMJ
 SQNgn3B0EJOEU1utNskUAORCV2WFZX0jqC56dOYVWA9zZxnRGvQcaXFDUSMW1uAqSBy3jxO98TK2
 NcKifqx6rY69A9LuIE/WzKPsuvcd5LiDZgB3HR68dOBwp6A2VTVeALfm4Lf8tZPODV874XtA1bGv
 lnhG30957+Y2bPCY/Al8WD7b8tUqrzNoVb66Uz/C2kybry8w32fLtIjT9ik6HugYPaEaeUmia/M6
 foC3smmcr08dR1h2HvmPB6Fb3VEVScTTBg7DV388CVsONrMJuGzuoGnKTKcyG49os/tOryltftT4
 NZEQ3vI4J7QA6bnykuTHKSWdRL6OtyN7A2wRRV8n4XE0VxMbI5WI/3F1qHeXtIZXg6+e2NeioPng
 UbDzIGafosDCkZydVrCpNS0SSX2t6gHZym81j3JiOSC6vtxuYy/MBLIoEcYH+LKBw+SplSb/9OJq
 7RgoJpzMYZre45oQSaK3jGBp
X-Report-Abuse-To: spam@se1.web-dns1.com
X-Complaints-To: abuse@se1.web-dns1.com
Subject: Re: [oss-security] How to do secure coding and create secure software

"the term "hack" has a lot of other less nefarious meanings, and using 
it to describe unwanted or criminal activity casts the entire hacker 
community in a negative light."

Just want to add my support for this important statement.  Thanks for 
saying stating this so well Jeremy!

-Katie

On 2025-09-28 11:15, Jeremy Stanley wrote:
> On 2025-09-28 09:05:15 +0530 (+0530), Amit wrote:
> [...]
>> But still, the main point is that can someone give an example of how a 
>> software made up of all secure functions be hacked? I request for an 
>> example (not theoretical statements).
>> 
>> Or, some example that happened in the past in the real world? I will 
>> analyze that.
> [...]
> 
> As an aside, the term "hack" has a lot of other less nefarious 
> meanings, and using it to describe unwanted or criminal activity casts 
> the entire hacker community in a negative light.
> 
> I think you still have tunnel vision, imagining that "hacking" software 
> can only mean attacking flaws in the way it was coded. When I say most 
> of the security flaws I deal with stem from poor design choices rather 
> than insecure coding practices, I really mean it. I'm one of the 
> vulnerability managers for the OpenStack project, and skimming over all 
> the recent entries at the top of 
> https://security.openstack.org/ossalist.html they basically all fit 
> that description.
> 
> It's comparatively easy to avoid or catch insecure coding patterns that 
> could lead to vulnerabilities, it's much harder to design complex 
> software securely.
