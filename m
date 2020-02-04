X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["884" "Tuesday" "4" "February" "2020" "13:27:11" "+0100" "Solar Designer" "solar@openwall.com" "<20200204122711.GA16946@openwall.com>" "24" "Re: [oss-security] CVE-2020-7221: mariadb: possible local mysql to root user exploit in mysql_install_db script setting permissions of /usr/lib64/mysql/plugin/auth_pam_tool_dir/auth_pam_tool" "^Date:" nil nil "2" "2020020412:27:11" "[oss-security] CVE-2020-7221: mariadb: possible local mysql to root user exploit in mysql_install_db script setting permissions of /usr/lib64/mysql/plugin/auth_pam_tool_dir/auth_pam_tool" (number mark "        solar@openwa Feb  4   24/884   " thread-indent "\"Re: [oss-security] CVE-2020-7221: mariadb: possible local mysql to root user exploit in mysql_install_db script setting permissions of /usr/lib64/mysql/plugin/auth_pam_tool_dir/auth_pam_tool\"\n") "<20200204102604.GB11664@f195.suse.de>" ("<20200204102604.GB11664@f195.suse.de>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-7221: mariadb: possible local mysql to root user exploit in mysql_install_db script setting permissions of /usr/lib64/mysql/plugin/auth_pam_tool_dir/auth_pam_tool" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17542 invoked by uid 550); 4 Feb 2020 12:30:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15750 invoked from network); 4 Feb 2020 12:27:23 -0000
Message-ID: <20200204122711.GA16946@openwall.com>
References: <20200204102604.GB11664@f195.suse.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200204102604.GB11664@f195.suse.de>
User-Agent: Mutt/1.4.2.3i
Date: Tue, 4 Feb 2020 13:27:11 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2020-7221: mariadb: possible local mysql to root user exploit in mysql_install_db script setting permissions of /usr/lib64/mysql/plugin/auth_pam_tool_dir/auth_pam_tool
To: oss-security@lists.openwall.com

On Tue, Feb 04, 2020 at 11:26:04AM +0100, Matthias Gerstner wrote:
> For Deb/RPM packaging MariaDB continues to suggest to use the following
> dir and file modes [2], [3]:
> 
> mysql:root  0700 /usr/lib/mysql/plugin/auth_pam_tool_dir
>  root:root 04755 /usr/lib/mysql/plugin/auth_pam_tool_dir/auth_pam_tool
> 
> I personally suggest the following directory mode instead:
> 
> root:mysql  0750 /usr/lib/mysql/plugin/auth_pam_tool_dir

Why not simply

root:mysql 04710 /usr/lib/mysql/plugin/auth_pam_tool

without the directory?  I see only one reason: it's a bigger change
relative to the current implementation, which is more work now, but
perhaps this cleanup is worth it longer-term.

The approach with a directory (or several) is sometimes useful to limit
access to a file yet avoid use of ACLs, but the case above looks simple
enough not to require this complication.
 
Alexander
