Received: (qmail 17489 invoked by uid 550); 13 Apr 2023 20:36:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17464 invoked from network); 13 Apr 2023 20:36:11 -0000
X-Virus-Scanned: Debian amavisd-new at nerv.fi
Date: Thu, 13 Apr 2023 23:36:27 +0300
From: Henri Salo <henri@nerv.fi>
To: Demi Marie Obenour <demi@invisiblethingslab.com>
Cc: oss-security@lists.openwall.com
Message-ID: <ZDhnttxQd7ENy8C/@cc.hsalo.nerv.fi>
References: <18477145-F7AD-455D-A0AB-77B3E402A7B7@beckweb.net>
 <ZDg9kq+QJz7beBQ+@itl-email>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZDg9kq+QJz7beBQ+@itl-email>
Subject: Re: [oss-security] Multiple vulnerabilities in Jenkins plugins

On Thu, Apr 13, 2023 at 01:36:14PM -0400, Demi Marie Obenour wrote:
> What is the reason for the large number of unfixed vulnerabilities?
> To me, this seems like an argument for not using Jenkins (or at least
> its plugins) at all.
> -- 
> Sincerely,
> Demi Marie Obenour (she/her/hers)

It's better for organizations to be aware of the vulnerabilities and risks
related to used software. Sometimes it is challenging to get the author/team to
fix the security issues (busy/unresponsive/miscommunication etc). This is very
common with plugins in different software as there are large number of
developers. It's better for users and community to disclose the issues if no
fix is provided as plugins can be disabled, WAF can be configured etc.

-- 
Henri Salo
