Received: (qmail 22081 invoked by uid 550); 1 Nov 2025 03:01:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18273 invoked from network); 1 Nov 2025 03:01:02 -0000
Date: Sat, 1 Nov 2025 04:00:54 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20251101030054.GA3031@openwall.com>
References: <aP_msOoiyHJ_M4Yx@mertle> <20251027163220.8c7ede47-6b3a-4190-ad4b-e52761b341de@korelogic.com> <20251028014909.GA6430@openwall.com> <76f8e74c-d9cc-4f20-8061-488598f85fe7@protonmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <76f8e74c-d9cc-4f20-8061-488598f85fe7@protonmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

On Fri, Oct 31, 2025 at 09:06:09PM +0000, Art Manion wrote:
> On 2025-10-27 18:49, Solar Designer wrote:
> 
> > What's common about the CVEs mentioned in this thread, including those
> > against GNU Bison (so not config file parsing, but just bogus CVEs), is
> > that all of them were assigned by VulDB as the CNA.  VulDB even went to
> > the effort (or automation?) to generate CVSS 2.0, 3.0, 3.1, and 4.0
> > vectors for all of these.  It's pretty ridiculous for a CNA not only to
> > assign bogus CVEs, but also have CVSS vectors and scores for them
> > without realizing the error.  This suggests a lack of proper process
> > and/or expertise.
> > 
> > At this point, I think we want to hear from VulDB on this, and from
> > MITRE on their requirements for CNAs in general and VulDB in particular
> > to review CVE requests before assignment.  Maybe VulDB is in violation.
> 
> Speaking as a CVE Board member, but not for MITRE, I suggest that somebody dispute the dnsmasq (and Bison) CVE IDs.  I'll do this unless somebody else wants to.  There is room for improvements to CVE assignment, but the current path is to file disputes.  Perhaps CNAs with "high" dispute counts or ratios warrant some sort of action.

The two Bison CVEs mentioned in this thread are already disputed, but if
it's a case of "code not present" (AI or wrongly reported against Bison
rather than another project?), then they should probably get rejected
after a further confirmation?  The CVE descriptions currently include:

CVE-2025-8733: "It is still unclear if this vulnerability genuinely
exists. The issue could not be reproduced from a GNU Bison 3.8.2 tarball
run in a Fedora 42 container."

CVE-2025-8734: "The actual existence of this vulnerability is currently
in question. The issue could not be reproduced from a GNU Bison 3.8.2
tarball run in a Fedora 42 container."

CVEs against dnsmasq (CVE-2025-12198, CVE-2025-12199, CVE-2025-12200)
and Kamailio (CVE-2025-12204, CVE-2025-12205, CVE-2025-12206, and
CVE-2025-12207) mentioned in this thread are not yet disputed and have
no comments of this sort in their descriptions.

> Considering the CVE vulnerability determination rules, if there is no net security impact or gain to the attacker, then:
> 
> "4.1.2 Conditions or behaviors that do not lead to a security impact SHOULD NOT be determined to be Vulnerabilities. Examples of security impacts include an increase in access for an attacker, a decrease in availability of a target, or another violation of security policy."
> 
> https://www.cve.org/resourcessupport/allresources/cnarules#section_4-1_Vulnerability_Determination
> 
> Does dnsmasq read the config file before dropping privileges?  I think so, since dnsmasq needs to know what interfaces and ports to bind to?
> 
> Does dnsmasq check that the config file is root-owned and not user-writable?  In my brief testing, no.
> 
> Can a regular user call dnsmasq with '-C dnsmasq_malicious.conf' and achieve memory corruption under root privileges?  Even if it's unlikely to result in code execution, that privilege escalation may qualify as a CVE-worthy vulnerability.

I don't think a "check that the config file is root-owned and not
user-writable" would be relevant since a maybe-relevant threat model
involves config files intentionally created by other software such as a
web UI, which would set permissions such that the file is processed, and
since such checks are uncommon and the lack of them does not mean the
software supports untrusted config files.

Other than that, I see that this gets tricky for a CNA to evaluate
without input from the maintainers, so I may have been unnecessarily
harsh on VulDB.

Jeffrey Walton helped bring this discussion to VulDB CNA Team's
attention, and they provided a couple of private responses along with
permission to post in here, which I do below.  The second response is
lengthy, so I'll start by sharing some highlights from it as I realize
that few would read the whole thing.

Highlight 1:

> At the moment we have slightly more than 200'000 submits in our 
> vulnerability queue waiting for moderation. Most of them are 0days not 
> yet disclosed anywhere else. We are overwhelmed with new submits on a 
> daily basis and this backlog grows faster than we can process it (we 
> might be able to reach a total of processed CVEs of 6'000 this year). We 
> do not make money with more CVEs. Participating in the CVE program to 
> this extent is a voluntary contribution to the security community. And 
> we have to fight AI slop like everyone else and are demotivated by poor 
> submits and broken exploits, because they are wasting valuable time 
> which we do not have.

Highlight 2:

> We think that the cyber security industry has a severe problem, when it 
> comes to vulnerability management. And the ongoing increase of 
> disclosures will make things just worse (we expect a total of >55'000 
> CVEs for 2026). This challenge cannot be solved by CVE alone. Vendors 
> must understand that they are an important part of this process. And 
> that it is their obligation to be responsible for the exposure to risks 
> of their users. Ignoring vulnerability reports and risks is not acceptable.
> 
> We contact product owners before a vulnerability disclosure whenever 
> possible. For several years >99%(!) of our voluntary reports remained 
> without any response. It was just a waste of effort and time. And it 
> expanded the time window for malicious actors to exploit these 0days. To 
> our surprise not just large companies but also OSS projects (small and 
> big ones) acted like this. We were not happy with the situation and 
> started adding a statement mentioning unresponsive vendors in the 
> affected CVE summaries to introduce some pressure to take vulnerability 
> reports serious. Over the last few months the willingness of 
> co-ordinated disclosures has drastically increased and we are very happy 
> about it. And sad, that it requires this measure to force people to do 
> the right thing. You would be surprised how many lawyers try to enforce 
> that we revoke published CVE entries.

The whole thing:

> From: VulDB CNA Team <cna@vuldb.com>
> Date: Tue, Oct 28, 2025 at 5:25 AM
> 
> Hello,
> 
> Thank you for making us aware of the discussion. We truly appreciate that!
> 
> It is not unusual that people tend to discuss and disagree with specific
> CVE assignments and the CVE program in general. We do not get involved
> into defending these in public because as a voluntary CNA of the CVE
> program it is not our task to do so.
> 
> For us it is essential that we strictly follow the CNA Operational Rules
> defined by MITRE:
> 
> * In accordance to CNA Operational Rule 4.3.2 we have notified the
> vendor via mail before the assignment. These reports are not AI
> generated but curated by our vulnerability submission moderation team.
> If vendors are not capable to reply to our invitation for a co-ordinated
> disclosure for whatever reason, this shall not halt the processing of a
> public vulnerability. Otherwise vendors could do this all the time to
> sabotage vulnerability disclosures. This would help the wrong people.
> 
> * There are scenarios where malicious config files are involved (e.g.
> CAPEC-75, CAPEC-176, CAPEC-536) and/or administrators might abuse their
> legitimate capabilities. The CNA Operational Rules do not prohibit
> assignments for CVEs which might reflect these scenarios. At the moment
> we tend to not flag CVEs as DISPUTED just because somebody thinks a
> scenario is unpopular or unrealistic. There will always be somebody who
> is going to claim that which would cause most CVE entries to be flagged
> as DISPUTED.
> 
> Therefore, we do not see a violation or shortcoming in our CVE
> processing. If somebody disagrees with our actions as a CNA, with the
> current CNA Operational Rules, or with the CVE program in general, then
> we would recommend contacting MITRE via https://cveform.mitre.org/ to
> discuss the matter. It is up to MITRE to decide how the CVE program must
> act or shall evolve.

On Thu, Oct 30, 2025 at 02:10:46AM +0100, Solar Designer wrote:
> > From: VulDB CNA Team <cna@vuldb.com>
[...]
> > For us it is essential that we strictly follow the CNA Operational Rules
> > defined by MITRE:
> > 
> > * In accordance to CNA Operational Rule 4.3.2 we have notified the
> > vendor via mail before the assignment. These reports are not AI
> > generated but curated by our vulnerability submission moderation team.
> > If vendors are not capable to reply to our invitation for a co-ordinated
> > disclosure for whatever reason, this shall not halt the processing of a
> > public vulnerability. Otherwise vendors could do this all the time to
> > sabotage vulnerability disclosures. This would help the wrong people.
> 
> Makes sense, but this shouldn't replace your own review.
> 
> > * There are scenarios where malicious config files are involved (e.g.
> > CAPEC-75, CAPEC-176, CAPEC-536) and/or administrators might abuse their
> > legitimate capabilities. The CNA Operational Rules do not prohibit
> > assignments for CVEs which might reflect these scenarios. At the moment
> > we tend to not flag CVEs as DISPUTED just because somebody thinks a
> > scenario is unpopular or unrealistic. There will always be somebody who
> > is going to claim that which would cause most CVE entries to be flagged
> > as DISPUTED.
> 
> To me, it's primarily not a question of "unpopular or unrealistic", but
> whether the component is vulnerable or not.  Sure it is realistic e.g.
> that someone would destroy a system by typing "rm -rf" as root, but that
> doesn't mean you'd assign a CVE to the "rm" command or to the shell, I
> hope.  It's the same with config files or settings that readily support
> similarly extensive intentional functionality, so there's no additional
> exposure from the claimed CVE.  It may also be the same for config files
> that are assumed to be trusted input, which most probably are.
> 
> > Therefore, we do not see a violation or shortcoming in our CVE
> > processing. If somebody disagrees with our actions as a CNA, with the
> > current CNA Operational Rules, or with the CVE program in general, then
> > we would recommend contacting MITRE via https://cveform.mitre.org/ to
> > discuss the matter. It is up to MITRE to decide how the CVE program must
> > act or shall evolve.
> 
> Yes, I agree it's up to MITRE to define common guidelines for all CNAs.
> 
> Alexander

On Thu, Oct 30, 2025 at 08:03:53AM +0100, VulDB CNA Team wrote:
> On 10/30/2025 2:10 AM, Solar Designer wrote:
> >VulDB CNA Team - thank you for your response to Jeff.  If you don't
> >mind, I'd like to quote this response in the oss-security thread.
> 
> Thank you very much for contacting us. It is very honorable to keep us 
> informed, even though it is not necessary. But we are even more thankful 
> because of that!
> 
> And thank you for asking regarding reposting. Yes, you may repost our 
> prior email and/or this reply. We would appreciate it.
[...]
> >Makes sense, but this shouldn't replace your own review.
> 
> Indeed. And it did not and will not. Our vulnerability submission 
> moderation team is reviewing every single submit manually and decides, 
> whether further processing might be necessary or not. This is not (and 
> cannot be) automated. AI does not play a role in this process.
> 
> The statistical average for the last few months is that we reject 16.5% 
> of all user submits because they are not valid. And 14.7% are flagged as 
> duplicate of existing entries and will not get a new entry. Therefore, 
> the total rejection rate is around 31.2%. We can keep this "trouble" 
> away from vendors because in almost all cases this happens without the 
> involvement of the vendor.
> 
> In the year 2025 we have published 5'099 CVEs so far. Only 9 of them 
> (0.17%) were wrong for technical reasons and must have been rejected 
> after their disclosure. We have to admit that we are very proud of this 
> very low error rate because it shows that our moderation team is doing a 
> good job. (For comparison: The overall REJECT rate of all CNAs in 
> 2025-Q3 is 14%)
> 
> Contacting vendors before a disclosure is fair and important because 
> they might have insights that are not obvious for us. We try to provide 
> the best experience for vendors by pre-filtering and pre-assessing raw 
> submits. We don't know every version of every product. And we can't test 
> every possible exploit scenario. Thus if we are uncertain we prefer 
> reporting something to a vendor to get an educated feedback. The 
> alternatives would be: a) Publishing without contacting the vendor 
> first, or b) not publishing at all. We think these options are far worse.
> 
> >>* There are scenarios where malicious config files are involved (e.g.
> >>CAPEC-75, CAPEC-176, CAPEC-536) and/or administrators might abuse their
> >>legitimate capabilities. The CNA Operational Rules do not prohibit
> >>assignments for CVEs which might reflect these scenarios. At the moment
> >>we tend to not flag CVEs as DISPUTED just because somebody thinks a
> >>scenario is unpopular or unrealistic. There will always be somebody who
> >>is going to claim that which would cause most CVE entries to be flagged
> >>as DISPUTED.
> >
> >To me, it's primarily not a question of "unpopular or unrealistic", but
> >whether the component is vulnerable or not.  Sure it is realistic e.g.
> >that someone would destroy a system by typing "rm -rf" as root, but that
> >doesn't mean you'd assign a CVE to the "rm" command or to the shell, I
> 
> Indeed. We do not hear this or a very similar argument for the first 
> time. And we do fully agree with your example. This would not create an 
> entry in our database and/or a new CVE entry: Using "rm -rf" as root 
> acts exactly like it should. It is not a vulnerability as defined by 
> MITRE in 
> https://www.cve.org/ResourcesSupport/Glossary?activeTerm=glossaryVulnerability 
> or our own definition at https://vuldb.com/?kb.vulnerability - CNA 
> Operational Rule 4.1.2 might be the main reasoning why to not assign a CVE 
> and we fully share this stance (source: 
> https://www.cve.org/resourcessupport/allresources/cnarules).
> 
> But we think that dnsmasq does not act how it should and how it is 
> intended to do, which could have some security implications:
> 
> a) dnsmasq might be started as root, but not everybody interacting with 
> dnsmasq might be or shall remain root. For example if dnsmask is 
> configured or used via a web frontend which shall limit the capabilities 
> of influence. If in this case a malicious dnsmasq admin is able to 
> execute arbitrary code, this might allow for unwanted escalation of 
> capabilities (e.g. CVE-2025-12198).
> 
> b) In src/dnsmasq.c different exit codes are defined which are also 
> explained in the man page. If dnsmasq is used within a tool-chain 
> depending on these exit codes, even a simple crash (e.g. CVE-2025-12199) 
> might seriously break something that could have a security impact. This 
> is the reason why we even tend to add local vulnerabilities with simple 
> crashes as result. We think that a finding like this in a pentest would 
> be noteworthy - at least as a low finding - as well. Some vendors argue 
> that nobody should rely on return codes (for security-relevant actions). 
> In this case this demands the question: Why even using/supporting them 
> anymore if they are not reliable? Others might argue that it is the 
> obligation of defensive programming of the tool-chain to prevent 
> security impacts. We dislike this argument because it makes a 
> programming mistake a problem for somebody else to mitigate.
> 
> If our CVE assignments are wrong for technical reasons, we will revoke 
> them immediately (takes usually 5-10 minutes). If the vendor disagrees 
> with our conclusions, we will set the entry to DISPUTED and add his 
> reasoning. This could have happened from the beginning if we would have 
> received a reply to our initial report.
> 
> >hope.  It's the same with config files or settings that readily support
> >similarly extensive intentional functionality, so there's no additional
> >exposure from the claimed CVE.  It may also be the same for config files
> >that are assumed to be trusted input, which most probably are.
> 
> We do not think that config files can be trusted per se: Config files 
> might be downloaded from public web sites, included from tainted local 
> file servers, shared in malicious code repositories, created by 
> hallucinating LLMs, quoted in erroneous documents, etc. If we start 
> trusting config files, why shouldn't we start trusting source code files 
> (=> no more bugs in compilers)? Word documents (=> no more bugs in 
> Office suites)? Or web sites (=> a lot of no more bugs)? Trust is not 
> always affordable. We think that risk awareness is more important than 
> trust.
> 
> Simple looking decisions of acceptance in one case might have severe 
> implications for many vulnerabilities disclosed in the past and even 
> more vulnerabilities that get disclosed in the future. A wrong decision 
> could break everything and make things seriously worse (e.g. uncertain, 
> unreliable, contradicting).
> 
> >>Therefore, we do not see a violation or shortcoming in our CVE
> >>processing. If somebody disagrees with our actions as a CNA, with the
> >>current CNA Operational Rules, or with the CVE program in general, then
> >>we would recommend contacting MITRE via https://cveform.mitre.org/ to
> >>discuss the matter. It is up to MITRE to decide how the CVE program must
> >>act or shall evolve.
> >
> >Yes, I agree it's up to MITRE to define common guidelines for all CNAs.
> 
> At the moment we have slightly more than 200'000 submits in our 
> vulnerability queue waiting for moderation. Most of them are 0days not 
> yet disclosed anywhere else. We are overwhelmed with new submits on a 
> daily basis and this backlog grows faster than we can process it (we 
> might be able to reach a total of processed CVEs of 6'000 this year). We 
> do not make money with more CVEs. Participating in the CVE program to 
> this extent is a voluntary contribution to the security community. And 
> we have to fight AI slop like everyone else and are demotivated by poor 
> submits and broken exploits, because they are wasting valuable time 
> which we do not have.
> 
> As mentioned before, there are many people discussing specific CVE 
> assignments and the CVE program in general. As you can see we have 
> strong opinions about this topic as well. But we have to decide: Either 
> we try to process the potential 0days which might hurt victims. Or we 
> can re-allocate this time to argue about vulnerability management in 
> public. Our decision is clear, that we just don't have the capacities to 
> participate in public discussions and must accept when people come to 
> different (or even wrong) conclusions.
> 
> However, we are not ashamed of our arguments. We think they are 
> reasonable and fair. If you want to repost or quote these statements, we 
> have no problem with that at all. It is not your task to support us. We 
> are grateful enough when people are willing to discuss things. And we 
> will always reply to direct inquiries regarding entries, CVEs, and 
> ideas. Helpful recommendations are always appreciated!
> 
> We think that the cyber security industry has a severe problem, when it 
> comes to vulnerability management. And the ongoing increase of 
> disclosures will make things just worse (we expect a total of >55'000 
> CVEs for 2026). This challenge cannot be solved by CVE alone. Vendors 
> must understand that they are an important part of this process. And 
> that it is their obligation to be responsible for the exposure to risks 
> of their users. Ignoring vulnerability reports and risks is not acceptable.
> 
> We contact product owners before a vulnerability disclosure whenever 
> possible. For several years >99%(!) of our voluntary reports remained 
> without any response. It was just a waste of effort and time. And it 
> expanded the time window for malicious actors to exploit these 0days. To 
> our surprise not just large companies but also OSS projects (small and 
> big ones) acted like this. We were not happy with the situation and 
> started adding a statement mentioning unresponsive vendors in the 
> affected CVE summaries to introduce some pressure to take vulnerability 
> reports serious. Over the last few months the willingness of 
> co-ordinated disclosures has drastically increased and we are very happy 
> about it. And sad, that it requires this measure to force people to do 
> the right thing. You would be surprised how many lawyers try to enforce 
> that we revoke published CVE entries.
> 
> In the CVE program many very smart people are trying to improve things. 
> There are multiple working groups tackling different challenges 
> (https://www.cve.org/ProgramOrganization/WorkingGroups). It is possible 
> to participate in this process and we know that MITRE is always happy to 
> invite clever people with good ideas into the program. Just bashing 
> vulnerability management, CVE, MITRE, or CNAs does not improve anything. 
> Most of them trying their best to tame a beast which appears to just 
> become stronger day by day... If you or anybody else have an idea to 
> improve our processing, please do not hesitate to let us know!
> 
> Regards,
> 
> VulDB CNA Team

Alexander
