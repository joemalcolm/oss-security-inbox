X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2328" "Thursday" "9" "November" "2017" "16:24:12" "+0100" "Jakub Wilk" "jwilk@jwilk.net" "<20171109152412.qmh4gw62lcrd5a4h@jwilk.net>" "75" "Re: [oss-security] nvi denial of service" nil nil nil "11" "2017110915:24:12" "[oss-security] nvi denial of service" (number mark "U       jwilk@jwilk. Nov  9   75/2328  " thread-indent "\"Re: [oss-security] nvi denial of service\"\n") "<20171109023255.GA12183@SDF.ORG>" ("<20171109023255.GA12183@SDF.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25767 invoked by uid 550); 9 Nov 2017 16:21:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25739 invoked from network); 9 Nov 2017 16:21:37 -0000
Date: Thu, 9 Nov 2017 16:24:12 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: oss-security@lists.openwall.com
Message-ID: <20171109152412.qmh4gw62lcrd5a4h@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20171109023255.GA12183@SDF.ORG>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20171109023255.GA12183@SDF.ORG>
User-Agent: NeoMutt/20170609 (1.8.3)
X-Ovh-Tracer-Id: 8296193467252529062
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedttddriedugdejkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecu
Subject: Re: [oss-security] nvi denial of service

Instead of applying more and more duct tape on nvi's broken design, you 
should stop abusing /var/tmp and store swapfiles in user's home 
directory instead; and drop the virecorver script completely.

* coypu@sdf.org, 2017-11-09, 02:32:
> /*
>+ * Since vi creates recovery files only accessible by the user, files
>+ * accessible by group or others are probably malicious so avoid them.
>+ * This is simpler than checking for getuid() == st.st_uid and we want
>+ * to preserve the functionality that root can recover anything which
>+ * means that root should know better and be careful.
>+ */
>+static int
>+checkok(int fd)
>+{
>+	struct stat sb;
>+
>+	return fstat(fd, &sb) != -1 && S_ISREG(sb.st_mode) &&
>+	    (sb.st_mode & (S_IRWXG|S_IRWXO)) == 0;

Clever, but racy. Between the open() and fstat() calls, the owner could 
change permissions to make this test pass.

>-		if ((fp = fopen(dp->d_name, "r+")) == NULL)
>+		if ((fp = fopen(dp->d_name, "r+efl")) == NULL)

These are non-standard modifiers:
"e" opens the file with O_CLOEXEC;
"l" opens the file with O_NOFOLLOW;
"f" opens only regular files.

("e" is available in glibc; the others are not.)

AFAICS, implementation of the "f" modifier in NetBSD is not atomic: it 
opens the file, then closes it if it's not a regular file.

>-		if ((fd = open(recpath, O_RDWR, 0)) == -1)
>+		if ((fd = open(recpath, O_RDWR|O_NONBLOCK|O_NOFOLLOW|O_CLOEXEC,

I believe that even with O_NONBLOCK, opening a non-regular file can have 
side effects.

>+for i in $RECDIR/vi.*; do
>+
>+	case "$i" in
>+	$RECDIR/vi.\*) continue;;
>+	esac

(Not related to security, but this check for non-expanded wildcard is 
not needed, because the code skips non-existent files later anyway.)

>+for i in $RECDIR/recover.*; do
>+
>+	case "$i" in
>+	$RECDIR/recover.\*) continue;;
>+	esac

(Ditto.)

>+	# Delete any recovery files that are zero length, corrupted,
>+	# or that have no corresponding backup file.  Else send mail
>+	# to the user.
>+	recfile=$(awk '/^X-vi-recover-path:/{print $2}' < "$i")

It's still happy to read any file as root. (So it's trivial for a local 
user to make the script hang forever.)

>+	if [ -n "$recfile" ] && [ -s "$recfile" ]; then
>+		$SENDMAIL -t < "$i"

It's still happy to send email arbitrary emails (including non-local 
recipients) as root.

-- 
Jakub Wilk
