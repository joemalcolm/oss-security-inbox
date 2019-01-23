X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["935" "Wednesday" "23" "January" "2019" "11:17:46" "+0100" "Daniel Beck" "ml@beckweb.net" "<33ACD1E8-76A6-46A3-8CA9-10E78E9F5FC5@beckweb.net>" "27" "Re: [oss-security] Multiple vulnerabilities in Jenkins" nil nil nil "1" "2019012310:17:46" "[oss-security] Multiple vulnerabilities in Jenkins" (number mark "U       ml@beckweb.n Jan 23   27/935   " thread-indent "\"Re: [oss-security] Multiple vulnerabilities in Jenkins\"\n") "<7201AC57-5316-478F-A241-C43FCC25B0F2@beckweb.net>" ("<7201AC57-5316-478F-A241-C43FCC25B0F2@beckweb.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9390 invoked by uid 550); 23 Jan 2019 10:18:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9370 invoked from network); 23 Jan 2019 10:17:59 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Date: Wed, 23 Jan 2019 11:17:46 +0100
References: <7201AC57-5316-478F-A241-C43FCC25B0F2@beckweb.net>
To: oss-security@lists.openwall.com
In-Reply-To: <7201AC57-5316-478F-A241-C43FCC25B0F2@beckweb.net>
Message-Id: <33ACD1E8-76A6-46A3-8CA9-10E78E9F5FC5@beckweb.net>
X-Mailer: Apple Mail (2.3445.9.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1548238679;9d497ab8;
X-HE-SMSGID: 1gmFbP-0006dO-Vp
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins



> On 16. Jan 2019, at 17:51, Daniel Beck <ml@beckweb.net> wrote:
> 
> SECURITY-868
> Users with the Overall/RunScripts permission (typically administrators) 
> were able to use the Jenkins script console to craft a 'Remember me' 
> cookie that would never expire.
> 
> This allowed attackers access to a Jenkins instance while the 
> corresponding user in the configured security realm exists, for example to 
> persist access after another successful attack. 

CVE-2019-1003003

> SECURITY-901
> When using an external security realm such as LDAP or Active Directory, 
> deleting a user from the security realm does not result in the user losing 
> access to Jenkins.
> 
> While deleting the user record from Jenkins did invalidate the 'Remember 
> me' cookie, there was no way to invalidate active sessions besides 
> restarting Jenkins or terminating sessions through other means, such as 
> Monitoring Plugin.

CVE-2019-1003004

