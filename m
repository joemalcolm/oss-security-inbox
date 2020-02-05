X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1941" "Wednesday" "5" "February" "2020" "11:31:55" "-0500" "Larry W. Cashdollar" "larry0@me.com" nil "55" nil "^Date:" nil nil "2" nil nil (number mark "        larry0@me.co Feb  5   55/1941  " thread-indent "\"Re: [oss-security] CVE-2019-18901: mariadb: possible symlink attack for the mysql user in the SUSE specific mysql-systemd-helper script\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2019-18901: mariadb: possible symlink attack for the mysql user in the SUSE specific mysql-systemd-helper script" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32294 invoked by uid 550); 5 Feb 2020 16:32:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32276 invoked from network); 5 Feb 2020 16:32:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1580920317; bh=ZIYiFJ43doY9lyy/9Q5SSnK5zyeiSPA+CGgE7sJPopk=;
	h=Date:Subject:From:To:Message-ID:Content-type;
	b=gZZOEu+vy3jRKnbVin3yD5jNjpCqqCQfiQqfezSaiTJrApQfqqQqWQXm+/6/b4JVb
	 qXnvfyMAwBMCu1S9YXni7yp5khJpIfG974fZQ5UMrbmyAXZxeaq/ZlRcyHNKALRttM
	 deamRck+lgz56DZqAR2tLxX9R3uDuy/cnswuL9J03LVadxXavnpkRLucAOqeM98F09
	 x+4LihR/TS+5vQG1xdMjABORiO0fjaGp6IQ2/Gz2WbMB/Q/edLm0Xp/eq4/IgzhOXC
	 zy+Qq5cVY+LJifh5qzVqHmZyOtd6uUawnwW3/HMLDlKdNN19bys//lrhWQymYNnPex
	 f+p4Quz+zAZUw==
User-Agent: Microsoft-MacOutlook/10.21.0.200113
Message-ID: <24EFFFB0-DD97-49EF-8C01-E70EC2C93CF7@me.com>
Thread-Topic: [oss-security] CVE-2019-18901: mariadb: possible symlink attack
 for the mysql user in the SUSE specific mysql-systemd-helper script
References: <20200205124521.GA16369@f195.suse.de>
In-Reply-To: <20200205124521.GA16369@f195.suse.de>
Mime-version: 1.0
Content-type: text/plain;
	charset="UTF-8"
Content-transfer-encoding: quoted-printable
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2020-02-05_04:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-2002050124
Date: Wed, 05 Feb 2020 11:31:55 -0500
From: "Larry W. Cashdollar" <larry0@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2019-18901: mariadb: possible symlink attack
 for the mysql user in the SUSE specific mysql-systemd-helper script
To: Open Security <oss-security@lists.openwall.com>

Hello Matthias,

That chmod 640 might be interesting if applied to /etc/shadow.  It could al=
low some users to read the password hashes.

=EF=BB=BFOn 2/5/20, 7:46 AM, "Matthias Gerstner" <mgerstner@suse.de> wrote:

    Hello list,
=20=20=20=20
    in the course of a review of the mariadb packaging in the SUSE Linux
    distribution I discovered that a SUSE specific helper script
    "mysql-systemd-helper" unsafely operates with root privileges in
    the /var/lib/mysql directory [1].
=20=20=20=20
    During initial package installation and during upgrade scenarios the
    file /var/lib/mysql/mysql_upgrade_info is created/overwritten and
    modified using the following shell commands:
=20=20=20=20
    ```
    echo -n "$MYSQLVER" > "$datadir"/mysql_upgrade_info
    chmod 640 "$datadir/mysql_upgrade_info"
    ```
=20=20=20=20
    Since the unprivileged mysql user owns the parent directory it can
    remove this file and replace it with a symlink to write/overwrite in
    privileged file systems locations. This could mostly be used for
    denial-of-service purposes, a full privilege escalation should not be
    easily achieved by this vulnerability, since the file content cannot be
    controlled by a potential attacker.
=20=20=20=20
    Future SUSE mariadb packages will keep this file in a safe location in
    /var/lib/misc. Older, still supported packages will be fixed soon.
=20=20=20=20
    Cheers
=20=20=20=20
    Matthias
=20=20=20=20
    References
    ----------
=20=20=20=20
    [1]: https://bugzilla.suse.com/show_bug.cgi?id=3D1160895
=20=20=20=20
    --=20
    Matthias Gerstner <matthias.gerstner@suse.de>
    Dipl.-Wirtsch.-Inf. (FH), Security Engineer
    https://www.suse.com/security
    Phone: +49 911 740 53 290
    GPG Key ID: 0x14C405C971923553
=20=20=20=20
    SUSE Software Solutions Germany GmbH
    HRB 36809, AG N=C3=BCrnberg
    Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=C3=B6rffer
=20=20=20=20


