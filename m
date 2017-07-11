X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7626" "Tuesday" "11" "July" "2017" "13:52:16" "+0200" "Daniel Beck" "ml@beckweb.net" "<FE8FFD3A-9929-44E7-A11A-70652352F7F0@beckweb.net>" "190" "[oss-security] Jenkins plugins -- multiple vulnerabilities" nil nil nil "7" "2017071111:52:16" "[oss-security] Jenkins plugins -- multiple vulnerabilities" (number mark "U       ml@beckweb.n Jul 11  190/7626  " thread-indent "\"[oss-security] Jenkins plugins -- multiple vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5288 invoked by uid 550); 11 Jul 2017 11:52:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5267 invoked from network); 11 Jul 2017 11:52:28 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <FE8FFD3A-9929-44E7-A11A-70652352F7F0@beckweb.net>
Date: Tue, 11 Jul 2017 13:52:16 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1499773948;de96ab24;
X-HE-SMSGID: 1dUtiC-000684-O5
Subject: [oss-security] Jenkins plugins -- multiple vulnerabilities

Jenkins is an open source automation server which enables developers around=
=20
the world to reliably build, test, and deploy their software. The following=
=20
plugin releases contain fixes for security vulnerabilities:

- Docker Commons Plugin 1.8
- Git Plugin 3.3.2 and 3.4.0-beta-2
- GitHub Branch Source Plugin 2.0.8 and 2.2.0-beta-2
- Parameterized Trigger Plugin 2.35
- Periodic Backup Plugin 1.5
- Pipeline: Build Step Plugin 2.5.1
- Pipeline: Groovy Plugin 2.36.1
- Poll SCM Plugin 1.3.1
- Role-based Authorization Strategy Plugin 2.5.1
- Script Security Plugin 1.29.1
- Sidebar Link Plugin 1.9
- SSH Plugin 2.5
- Subversion Plugin 2.9

Users of these plugins should upgrade them to the indicated versions.

Summary and description of the vulnerabilities are below. Some more details=
,=20
severity, and attribution can be found here:
https://jenkins.io/security/advisory/2017-07-10/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you find security vulnerabilities in Jenkins, please report them as=20
described here:
https://jenkins.io/security/#reporting-vulnerabilities

---


SECURITY-201 / CVE-2017-1000084
Parameterized Trigger Plugin fails to check Item/Build permission: The=20
Parameterized Trigger Plugin did not check the build authentication it was=
=20
running as and allowed triggering any other project in Jenkins.

SECURITY-303 / CVE-2017-1000085
Subversion Plugin connects to a user-specified Subversion repository as par=
t=20
of form validation (e.g. to retrieve a list of tags). This functionality=20
improperly checked permissions, allowing any user with Item/Build permissio=
n=20
(but not Item/Configure) to connect to any web server or Subversion server=
=20
and send credentials with a known ID, thereby possibly capturing them.=20
Additionally, this functionality did not require POST requests be used,=20
thereby allowing the above to be performed without direct access to Jenkins=
=20
via Cross-Site Request Forgery attacks.

SECURITY-335 / CVE-2017-1000086
The Periodic Backup Plugin did not perform any permission checks, allowing=
=20
any user with Overall/Read access to change its settings, trigger backups,=
=20
restore backups, download backups, and also delete all previous backups via=
=20
log rotation. Additionally, the plugin was not requiring requests to its AP=
I=20
be sent via POST, thereby opening itself to Cross-Site Request Forgery=20
attacks.

SECURITY-342 / CVE-2017-1000087
GitHub Branch Source provides a list of applicable credential IDs to allow=
=20
users configuring a job to select the one they=E2=80=99d like to use. This=
=20
functionality did not check permissions, allowing any user with Overall/Rea=
d=20
permission to get a list of valid credentials IDs. Those could be used as=20
part of an attack to capture the credentials using another vulnerability.

SECURITY-352 / CVE-2017-1000088
The Sidebar Link plugin allows users able to configure jobs, views, and=20
agents to add entries to the sidebar of these objects. There was no input=20
validation, which meant users were able to use javascript: schemes for thes=
e=20
links. Now, only a set of whitelisted schemes are allowed by default.

SECURITY-433 / CVE-2017-1000089
Builds in Jenkins are associated with an authentication that controls the=20
permissions that the build has to interact with other elements in Jenkins.=
=20
The Pipeline: Build Step Plugin did not check the build authentication it=20
was running as and allowed triggering any other project in Jenkins.

SECURITY-516 / CVE-2017-1000090
Role-based Authorization Strategy Plugin was not requiring requests to its=
=20
API be sent via POST, thereby opening itself to Cross-Site Request Forgery=
=20
attacks. This allowed attackers to add administrator role to any user, or t=
o=20
remove the authorization configuration, preventing legitimate access to=20
Jenkins.

SECURITY-527 / CVE-2017-1000091
GitHub Branch Source Plugin connects to a user-specified GitHub API URL (e.=
g.
GitHub Enterprise) as part of form validation and completion (e.g. to verif=
y=20
Scan Credentials are correct). This functionality improperly checked=20
permissions, allowing any user with Overall/Read access to Jenkins to=20
connect to any web server and send credentials with a known ID, thereby=20
possibly capturing them. Additionally, this functionality did not require=20
POST requests be used, thereby allowing the above to be performed without=20
direct access to Jenkins via Cross-Site Request Forgery.

SECURITY-528 / CVE-2017-1000092
Git Plugin connects to a user-specified Git repository as part of form=20
validation. An attacker with no direct access to Jenkins but able to guess=
=20
at a username/password credentials ID could trick a developer with job=20
configuration permissions into following a link with a maliciously crafted=
=20
Jenkins URL which would result in the Jenkins Git client sending the=20
username and password to an attacker-controlled server.

SECURITY-529 / CVE-2017-1000093
Poll SCM Plugin was not requiring requests to its API be sent via POST,=20
thereby opening itself to Cross-Site Request Forgery attacks. This allowed=
=20
attackers to initiate polling of projects with a known name. While Jenkins=
=20
in general does not consider polling to be a protection-worthy action as=20
it=E2=80=99s similar to cache invalidation, the plugin specifically adds a=
=20
permission to be able to use this functionality, and this issue undermines=
=20
that permission.

SECURITY-533 / CVE-2017-1000094
Docker Commons Plugin provides a list of applicable credential IDs to allow=
=20
users configuring a job to select the one they=E2=80=99d like to use to aut=
henticate=20
with a Docker Registry. This functionality did not check permissions,=20
allowing any user with Overall/Read permission to get a list of valid=20
credentials IDs. Those could be used as part of an attack to capture the=20
credentials using another vulnerability.

SECURITY-538 / CVE-2017-1000095
The default Script Security Plugin whitelist included the following unsafe=
=20
entries:

    DefaultGroovyMethods.putAt(Object, String, Object)
    DefaultGroovyMethods.getAt(Object, String)

These allowed circumventing many of the access restrictions implemented in=
=20
the script sandbox by using e.g. currentBuild['rawBuild'] rather than=20
currentBuild.rawBuild.

Additionally, the following entries could allow accessing private data that=
=20
would not be accessible otherwise from the sandboxed environment:

    groovy.json.JsonOutput.toJson(Closure)
    groovy.json.JsonOutput.toJson(Object).

These have now been removed from the whitelist and added to the blacklist.

SECURITY-551 / CVE-2017-1000096
Arbitrary code execution due to incomplete sandbox protection in Pipeline=20
Groovy Plugin: Constructors, instance variable initializers, and instance=20
initializers in Pipeline scripts were not subject to sandbox protection, an=
d=20
could therefore execute arbitrary code. This could be exploited e.g. by=20
regular Jenkins users with the permission to configure Pipelines in Jenkins=
,=20
or by trusted committers to repositories containing Jenkinsfiles. These=20
language elements are now subject to sandbox protection.

JENKINS-21436
The SSH Plugin stores credentials which allow jobs to access remote servers=
=20
via the SSH protocol. User passwords and passphrases for encrypted SSH keys=
=20
are stored in plaintext in a configuration file. SSH Plugin now integrates=
=20
with the Credentials Plugin and existing credentials are migrated.

