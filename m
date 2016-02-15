X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2930" "Monday" "15" "February" "2016" "13:32:13" "+0100" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9pQ-2dpNna8pOwEKTgT7SySxhjgNYAE1URbq4EQvsffNA@mail.gmail.com>" "75" "[oss-security] cloud-init follows symlinks for ssh authorized_keys" nil nil nil "2" "2016021512:32:13" "[oss-security] cloud-init follows symlinks for ssh authorized_keys" (number mark "U       Jason@zx2c4. Feb 15   75/2930  " thread-indent "\"[oss-security] cloud-init follows symlinks for ssh authorized_keys\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6135 invoked by uid 550); 15 Feb 2016 12:32:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6080 invoked from network); 15 Feb 2016 12:32:27 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:date:message-id:subject:from:to:content-type; s=mail; bh=jECacj
	LYWSGvRVAAFOV19E6o9eo=; b=xu3onzL60euxmRzAeKDhEZCoSDc7oKq0ocXdPK
	Ld0E3eoAFxjYdEBF7f6rkDIMs4aa7qBmXspDB5PApbBkzHNPfe0EX61oo9MRS7ci
	vHiVxLw4Vo1xH7Nigu4gUMXd1AQ13AOiQWsAYJMNe2ii91H9NAOMvpSq/5GhSn7p
	F7R3AwtlXh9TWD4rGsNxhh6Xmrk8C6hVZZKXCYCbhSCstdsglcqsn+dFDhf7N0qi
	UwxJSozU+3Yb/G0Iuzan4Tr0hBvRLDyWz9ZesfsDnaI/3+nWxOtWQ/hFK5pZYZSz
	3czub6dY8nkeJeFSX1W+Zt0OXZjwrr50ebM2pAy0fYQJevFw==
X-Gm-Message-State: AG10YOTe8I6c696eHGUQS/DaSQeb8fEoNERbbXP4cvIDOVyVMFuII6YBweZmvFlVpVxgaHsjKuppd1sarK0X0g==
MIME-Version: 1.0
X-Received: by 10.194.21.135 with SMTP id v7mr15764787wje.131.1455539533743;
 Mon, 15 Feb 2016 04:32:13 -0800 (PST)
Date: Mon, 15 Feb 2016 13:32:13 +0100
X-Gmail-Original-Message-ID: <CAHmME9pQ-2dpNna8pOwEKTgT7SySxhjgNYAE1URbq4EQvsffNA@mail.gmail.com>
Message-ID: <CAHmME9pQ-2dpNna8pOwEKTgT7SySxhjgNYAE1URbq4EQvsffNA@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: oss-security <oss-security@lists.openwall.com>, harlowja@gmail.com, 
	smoser@brickies.net
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] cloud-init follows symlinks for ssh authorized_keys

Hi folks,

Cloud-init is a service run on "cloud" distributions that takes data
provided by the VM administrator and uses it to configure the system.
It can be used to add or update users and related SSH keys.

FWIW, the SSH key handling code (and possibly other places too,
haven't checked) appears to follow symlinks. This means that a local
user could "ln -s somewhere/else ~/.ssh/authorized_keys" or perhaps
even "ln -s somewhere/else ~/.ssh" (for the auto-chown/chmod). Then,
sometime later, say the administrator updates this malicious user's
SSH key using the metadata available to cloud-init, and reboots. Uh oh
speghettio. I didn't really check these findings in practice, so you
might want to take a closer look, but it doesn't appear pretty.

http://bazaar.launchpad.net/~cloud-init-dev/cloud-init/trunk/view/head:/cloudinit/ssh_util.py

Here are a few places where this happens:

def parse_authorized_keys(fname):
    lines = []
    try:
        if os.path.isfile(fname):
            lines = util.load_file(fname).splitlines()
    except (IOError, OSError):
        util.logexc(LOG, "Error reading lines from %s", fname)
        lines = []

    parser = AuthKeyLineParser()
    contents = []
    for line in lines:
        contents.append(parser.parse(line))
    return contents

According to the python documentation:
    os.path.isfile(path)
        Return True if path is an existing regular file. This follows
symbolic links, so both islink() and isfile() can be true for the same
path.


def setup_user_keys(keys, username, options=None):
    # Make sure the users .ssh dir is setup accordingly
    (ssh_dir, pwent) = users_ssh_info(username)
    if not os.path.isdir(ssh_dir):
        util.ensure_dir(ssh_dir, mode=0o700)
        util.chownbyid(ssh_dir, pwent.pw_uid, pwent.pw_gid)

    # Turn the 'update' keys given into actual entries
    parser = AuthKeyLineParser()
    key_entries = []
    for k in keys:
        key_entries.append(parser.parse(str(k), options=options))

    # Extract the old and make the new
    (auth_key_fn, auth_key_entries) = extract_authorized_keys(username)
    with util.SeLinuxGuard(ssh_dir, recursive=True):
        content = update_authorized_keys(auth_key_entries, key_entries)
        util.ensure_dir(os.path.dirname(auth_key_fn), mode=0o700)
        util.write_file(auth_key_fn, content, mode=0o600)
        util.chownbyid(auth_key_fn, pwent.pw_uid, pwent.pw_gid)


Again, os.path.isdir follows symlinks, and so do chown and chmod, and
also the functions underlying write_file. By the way there are some
more race condition situations happening in the latter function, among
others, in which directories can be removed or changed around after
the "ensure" check. Whether or not that constitutes a security issue
remains to be seen.

Anyway, make of this what you will. Is this a vector? Is this not a
vector? It's certainly not very robust code in any case.

Regards,
Jason
