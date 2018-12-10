X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1711" "Monday" "10" "December" "2018" "01:52:09" "+0100" "Daniel Beck" "ml@beckweb.net" "<B8A19B32-67C8-4FEE-BBC3-7729176CC70C@beckweb.net>" "56" "Re: [oss-security] Multiple vulnerabilities in Jenkins" nil nil nil "12" "2018121000:52:09" "[oss-security] Multiple vulnerabilities in Jenkins" (number mark "U       ml@beckweb.n Dec 10   56/1711  " thread-indent "\"Re: [oss-security] Multiple vulnerabilities in Jenkins\"\n") "<A2C87D38-1E04-47A1-93FE-8FB4770AEA89@beckweb.net>" ("<A2C87D38-1E04-47A1-93FE-8FB4770AEA89@beckweb.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5755 invoked by uid 550); 10 Dec 2018 00:52:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5694 invoked from network); 10 Dec 2018 00:52:22 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Date: Mon, 10 Dec 2018 01:52:09 +0100
References: <A2C87D38-1E04-47A1-93FE-8FB4770AEA89@beckweb.net>
To: oss-security@lists.openwall.com
In-Reply-To: <A2C87D38-1E04-47A1-93FE-8FB4770AEA89@beckweb.net>
Message-Id: <B8A19B32-67C8-4FEE-BBC3-7729176CC70C@beckweb.net>
X-Mailer: Apple Mail (2.3445.9.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1544403142;7c16e540;
X-HE-SMSGID: 1gW9nv-0007PY-9S
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins



> On 15. Aug 2018, at 17:10, Daniel Beck <ml@beckweb.net> wrote:
> 
> 
> SECURITY-637
> Jenkins allowed deserialization of URL objects via Remoting (agent 
> communication) and XStream.
> 
> This could in rare cases be used by attackers to have Jenkins look up 
> specified hosts' DNS records.

CVE-2018-1999042

> SECURITY-672
> When attempting to authenticate using API token, an ephemeral user record 
> was created to validate the token in case an external security realm was 
> used, and the user record in Jenkins not previously saved, as (legacy) API 
> tokens could exist without a persisted user record.
> 
> This behavior could be abused to create a large number of ephemeral user 
> records in memory.

CVE-2018-1999043

> SECURITY-790
> The form validation for cron expressions (e.g. "Poll SCM", "Build 
> periodically") could enter infinite loops when cron expressions only 
> matching certain rare dates were entered, blocking request handling 
> threads indefinitely.

CVE-2018-1999044

> SECURITY-996
> The "Remember me" feature can be disabled in the Jenkins security 
> configuration.
> 
> This did not disable the processing of previously set "Remember me" 
> cookies, so they still allowed users to be logged in.

CVE-2018-1999045

> SECURITY-1071
> Users with Overall/Read permission were able to access the URL serving 
> agent logs on the UI due to a lack of permission checks.

CVE-2018-1999046

> SECURITY-1076
> Users with Overall/Read permission were able to access the URL used to 
> cancel scheduled restart jobs initiated via the update center ("Restart 
> Jenkins when installation is complete and no jobs are running") due to a 
> lack of permission checks.

CVE-2018-1999047

