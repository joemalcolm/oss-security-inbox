Received: (qmail 28576 invoked by uid 550); 1 Nov 2025 02:25:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19668 invoked from network); 1 Nov 2025 02:24:29 -0000
Date: Sat, 1 Nov 2025 03:24:26 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20251101022426.GA2874@openwall.com>
References: <A062B294-84C0-4E3F-8C08-C03D7E469B74@beckweb.net> <28e080a3-5916-4e82-bfbd-bce9bc1da091@pipping.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <28e080a3-5916-4e82-bfbd-bce9bc1da091@pipping.org>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins plugins

On Wed, Oct 29, 2025 at 04:19:55PM +0100, Sebastian Pipping wrote:
> On 10/29/25 14:03, Daniel Beck wrote:
> >Additionally, we announce unresolved security issues in the following
> >plugins:
> >
> >* Azure CLI Plugin
> >* ByteGuard Build Actions Plugin
> >* Curseforge Publisher Plugin
> >* Eggplant Runner Plugin
> >* Extensible Choice Parameter Plugin
> >* JDepend Plugin
> >* Nexus Task Runner Plugin
> >* OpenShift Pipeline Plugin
> >* Publish to Bitbucket Plugin
> >* Start Windocks Containers Plugin
> >* Themis Plugin
> 
> For anyone else who also wonders about the combination of announcing 
> without a fix (and the motivation or story behind it), I found
> https://www.jenkins.io/security/plugins/#unresolved for a documented
> answer.

Thanks.  Posting this answer directly in here for those too busy to
visit links and for archival, as taken from the Markdown source:

https://raw.githubusercontent.com/jenkins-infra/jenkins.io/refs/heads/master/content/security/plugins.adoc

> == Announcing Unresolved Vulnerabilities
> 
> In case of a plugin vulnerability, we try to contact the plugin maintainer(s) to inform them of it.
> If they decline (or otherwise fail) to fix the vulnerability, or don't respond in a timely manner, and the security team doesn't have the capacity to fix it, we follow the process outlined below in the interest of our users:
> 
> . Publish a security advisory about the plugin, describing the nature of the vulnerability, but noting that there is no fix (other than no longer using the plugin).
>   If there are workarounds, explain them.
> . In some cases of particularly severe vulnerabilities, link:#suspensions[stop publishing the vulnerable plugin on the Jenkins update sites].
> . Add metadata to update sites to inform administrators on the Jenkins UI about vulnerable plugins they have installed.
> . Display security warnings on https://plugins.jenkins.io/[the plugins site].
> 
> This allows Jenkins administrators to make an informed decision about their continued use of plugins with unresolved security vulnerabilities.
> 
> == Following Up Later
> 
> Some maintainers end up fixing security vulnerabilities after we have announced it as unresolved in their plugin.
> This can be any time between hours and years after publication.
> 
> In those cases, security advisories will _not_ be amended, as the information provided was correct at the time of publication.
> Additionally, the security advisory will be clear that the lack of a fix is only known "_as of publication of this advisory_".
> 
> We will update the security warnings metadata that is shown to administrators in Jenkins and on https://plugins.jenkins.io/[the plugins site].
> Maintainers can inform us through Jira or email about a fix or https://github.com/jenkins-infra/update-center2/#security-warnings[file a pull request updating the warnings metadata] themselves.
> Once we confirm the fix is correct and complete, we will update the published warnings metadata.
> This will remove the active security warning from the plugin entry on the plugins site and from the plugin manager directly in Jenkins.

Alexander
