Received: (qmail 26470 invoked by uid 550); 17 Oct 2025 23:34:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17665 invoked from network); 17 Oct 2025 23:16:46 -0000
Date: Sat, 18 Oct 2025 01:16:36 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: oss-security@lists.openwall.com
Message-ID: <20251017231636.GC2696@qaa.vinc17.org>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.15+91 (ba36b184) vl-169878 (2025-10-03)
Subject: [oss-security] rplay (Mark R. Boyns) potential security issues (unsanitized data,
 unchecked malloc...)

Debian distributes Mark R. Boyns's rplay 3.3.2. I've had
a very quick look at the source and found at least:

* In rplay/rplay.c line 600, the use of atoi() on something that
  looks like unsanitized data from a remote server:

        remote_size = -1;
        p = rptp_parse(response, "size");
        if (p)
            remote_size = atoi(p);

* Various malloc() without a check of failure, such as:

contrib/rplaytool-1.1/misc.c:    INFO *info = (INFO *) malloc (sizeof (INFO));
contrib/rplaytool-1.1/misc.c-
contrib/rplaytool-1.1/misc.c-    info->filename[0] = '\0';

contrib/rplaytool-1.1/rplaytool_stubs.c:                sp = (SPOOL *) malloc (sizeof (SPOOL));
contrib/rplaytool-1.1/rplaytool_stubs.c-                sp->id = id;

contrib/xjukebox-0.9/xjukebox.c-  if (*list != NULL)
contrib/xjukebox-0.9/xjukebox.c-    *list = (spool_info **)realloc(*list, (*items_count + 1) *
--
contrib/xjukebox-0.9/xjukebox.c:      *list = (spool_info **)malloc(sizeof(spool_info *));
contrib/xjukebox-0.9/xjukebox.c-    }
contrib/xjukebox-0.9/xjukebox.c-  (*list)[*items_count] = new_item;
contrib/xjukebox-0.9/xjukebox.c-  if ((*nlist != NULL)  && (*nlist != empty_list))
contrib/xjukebox-0.9/xjukebox.c-    *nlist = (String *)realloc(*nlist, (*items_count + 1) * sizeof(String));
contrib/xjukebox-0.9/xjukebox.c-  else
contrib/xjukebox-0.9/xjukebox.c:    *nlist = (String *)malloc(sizeof(String));
contrib/xjukebox-0.9/xjukebox.c-  (*nlist)[*items_count] = new_item->sound;

contrib/xjukebox-0.9/xjukebox.c:  new_item = (spool_info *)malloc(sizeof(spool_info));
contrib/xjukebox-0.9/xjukebox.c-
contrib/xjukebox-0.9/xjukebox.c-  new_item->sid = atoi (1 + rptp_parse (new_info, "id"));

librplay/async.c:               new->data = malloc(nbytes);
librplay/async.c-               memcpy(new->data, ptr, nbytes);

librplay/async.c:       new = (ibuf *) malloc(sizeof(ibuf));
librplay/async.c-       new->next = NULL;

librplay/rplay.c:           rp->data = (char *) malloc(rp->data_size);
librplay/rplay.c-           memcpy(rp->data, packet, rp->data_size);

rplay/rplay.c:          name = (char *) malloc(strlen(cwd) + strlen(argv[optind]) + 2);
rplay/rplay.c-          strcpy(name, cwd);

rplayd/rplayd.c:            s = (SERVER *) malloc(sizeof(SERVER));
rplayd/rplayd.c-            s->next = NULL;

rx/rxanal.c:            *subexps = (struct rexp_node **)malloc (sizeof (struct rexp_node *) * *re_nsub);
rx/rxanal.c-          else
rx/rxanal.c-            *subexps = (struct rexp_node **)realloc (*subexps,
rx/rxanal.c-                                                     sizeof (struct rexp_node *) * *re_nsub);
rx/rxanal.c-        }
rx/rxanal.c-    }
rx/rxanal.c-      if (node->params.pair.left)
rx/rxanal.c-    id = rx_posix_analyze_rexp (subexps, re_nsub, node->params.pair.left, id);

rx/rxnfa.c:     consed = (struct rx_se_list *) malloc (sizeof (*consed));
rx/rxnfa.c-     *consed = template;

rx/rxnode.c:  n = (struct rexp_node *) malloc (sizeof (*n));
rx/rxnode.c-  rx_bzero ((char *)n, sizeof (*n));

rx/rxunfa.c:      cr = (struct rx_cached_rexp *)malloc (sizeof (*cr));
rx/rxunfa.c-      rx_bzero ((char *)cr, sizeof (*cr));

My bug report in the Debian BTS:

  https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1118224

The upstream version was released in 1999, thus 26 years ago!
And the rplay homepage no longer exists.

Has anyone looked at this more closely?
Are there CVEs?

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)
