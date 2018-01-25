X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["420" "Thursday" "25" "January" "2018" "09:58:09" "+0100" "Daniel Beck" "ml@beckweb.net" "<59BE1921-4A41-4927-86AF-78C8A74C6EDB@beckweb.net>" "13" "Re: [oss-security] Jenkins EC2 Plugin 1.37 and earlier arbitrary shell command execution" nil nil nil "1" "2018012508:58:09" "[oss-security] Jenkins EC2 Plugin 1.37 and earlier arbitrary shell command execution" (number mark "U       ml@beckweb.n Jan 25   13/420   " thread-indent "\"Re: [oss-security] Jenkins EC2 Plugin 1.37 and earlier arbitrary shell command execution\"\n") "<8AE227B9-E337-45DC-9D8A-C4DB2452FB87@beckweb.net>" ("<8AE227B9-E337-45DC-9D8A-C4DB2452FB87@beckweb.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5175 invoked by uid 550); 25 Jan 2018 08:58:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4091 invoked from network); 25 Jan 2018 08:58:20 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Thu, 25 Jan 2018 09:58:09 +0100
References: <8AE227B9-E337-45DC-9D8A-C4DB2452FB87@beckweb.net>
To: oss-security@lists.openwall.com
In-Reply-To: <8AE227B9-E337-45DC-9D8A-C4DB2452FB87@beckweb.net>
Message-Id: <59BE1921-4A41-4927-86AF-78C8A74C6EDB@beckweb.net>
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1516870700;eeb3034c;
X-HE-SMSGID: 1eedMH-0001L6-3i
Subject: Re: [oss-security] Jenkins EC2 Plugin 1.37 and earlier arbitrary
 shell command execution


> On 6. Dec 2017, at 14:37, Daniel Beck <ml@beckweb.net> wrote:
> 
> SECURITY-643
> Users with permission to create or configure agents in Jenkins could
> configure an EC2 agent to run arbitrary shell commands on the master node
> whenever the agent was supposed to be launched.
> 
> Configuration of these agents now requires the 'Run Scripts' permission
> typically only granted to administrators.

CVE-2017-1000502

