X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["517" "Thursday" "25" "January" "2018" "16:59:35" "+0100" "Daniel Beck" "ml@beckweb.net" "<0B04A942-3122-44F7-9102-F714F14771EF@beckweb.net>" "15" "Re: [oss-security] Jenkins Script Security Plugin 1.36 and earlier arbitrary file read vulnerability" nil nil nil "1" "2018012515:59:35" "[oss-security] Jenkins Script Security Plugin 1.36 and earlier arbitrary file read vulnerability" (number mark "U       ml@beckweb.n Jan 25   15/517   " thread-indent "\"Re: [oss-security] Jenkins Script Security Plugin 1.36 and earlier arbitrary file read vulnerability\"\n") "<FBE17D96-D1AD-4F74-9D28-C82B19772071@beckweb.net>" ("<FBE17D96-D1AD-4F74-9D28-C82B19772071@beckweb.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28274 invoked by uid 550); 25 Jan 2018 15:59:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28256 invoked from network); 25 Jan 2018 15:59:46 -0000
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Thu, 25 Jan 2018 16:59:35 +0100
References: <FBE17D96-D1AD-4F74-9D28-C82B19772071@beckweb.net>
To: oss-security@lists.openwall.com
In-Reply-To: <FBE17D96-D1AD-4F74-9D28-C82B19772071@beckweb.net>
Message-Id: <0B04A942-3122-44F7-9102-F714F14771EF@beckweb.net>
X-Mailer: Apple Mail (2.3273)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1516895986;0f6ed41b;
X-HE-SMSGID: 1eejw6-0002c0-Sc
Subject: Re: [oss-security] Jenkins Script Security Plugin 1.36 and earlier
 arbitrary file read vulnerability


> On 11. Dec 2017, at 15:27, Daniel Beck <ml@beckweb.net> wrote:
> 
> SECURITY-663
> Users with the ability to configure sandboxed Groovy scripts are able to
> use a type coercion feature in Groovy to create new `File` objects from
> strings. This allowed reading arbitrary files on the Jenkins master file
> system.
> 
> Such a type coercion is now subject to sandbox protection and considered
> to be a call to the `new File(String)` constructor for the purpose of
> in-process script approval.

CVE-2017-1000505

