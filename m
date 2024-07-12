Received: (qmail 3882 invoked by uid 550); 12 Jul 2024 09:38:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3837 invoked from network); 12 Jul 2024 09:38:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720777106; x=1721381906; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MdV++oyif8qff5g9LyXF/W+m0MZt6jm1CucSx0yuKzs=;
        b=j2A1VBGXZ0xKTJfk6onYBfz0wWraJ2l5oVY5Mr7jV3cG92i0RUm4I0U0ZU5GjNvD/v
         UbDdOYu8RlvW0aZyawCwsJwIYL6LuV79o2bRXzsitHdC5VAWMRW1qEhA+/OM4FcZ1/GC
         jcKlO4o1OQZnxaz5UC99IWr9HX5mRwa2hYkErGQ4KhFRi0KFlmz7nwLpNejn+/YJPvsv
         W3sh8Dr6j2KNN60k/79CyV5N2n1Zd3w7fcUle8jAA/GTqVwi8rHfVM0sz6+ZqjtMeJsz
         QRNm+kHKqS1LjlyfUWoLh+9hchL86n7pjKc6GExtTtJMEllUJTplm/qmT7iynQvaQaaK
         aDwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720777106; x=1721381906;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MdV++oyif8qff5g9LyXF/W+m0MZt6jm1CucSx0yuKzs=;
        b=bWGRTQ/cuXa/maJjRwTb+9xW+1yYDEjkoaQl2FvIzz5jXzgDwd2KNvBRuS1lnh6MGS
         GEL2A39uu+jopXTAwTYd79D+mPXpK+LiAFXTiCYLTuXoVNVwVrP0gZ6snXoZ+9KNVE7v
         Il54kmxaQNOwvaO38IeUW1b9bWxriMJ9xaIgjI6US10qpvRWwEx/4Mb9QquFTAcjEW0s
         BWVhjxRXlZIOKFMn0ITNSmU+YLm63YCGPy9ybzt07lp9biLMMEzjoQLMyKvR3c4gPPgm
         OuY0SpvsZu48F3qGCBFpywaeGlSvkILaz/H9N1k9ZDJimFm+gmMvAA68QevvhmlKvl+7
         OMCQ==
X-Gm-Message-State: AOJu0YzQGiLUV89D4eCj4JWvgPJ4nDIjmMK7swl+SfoQzSIf7u0dwj4G
	goYu81iKimA7n4kLpIis+/8AxzwG40JNE3aPbbO9lRf8I4I8r4qryjlhkzFvM4OP1j47W34Gt/C
	lEyRzXk/hon/hNsMQfAs+8UGlcUqiqE5/tn+G6Q==
X-Google-Smtp-Source: AGHT+IF4IcBGoQrOSrGLWxS2WpEWHfKngAjsKUVEc3v+vOaULbS9VVEg/JaUTdM63ZKHMASsifnHe+Md/p5G9ZOGC0s=
X-Received: by 2002:a05:6214:485:b0:6b4:f853:3855 with SMTP id
 6a1803df08f44-6b61bccb53amr140166536d6.24.1720777105682; Fri, 12 Jul 2024
 02:38:25 -0700 (PDT)
MIME-Version: 1.0
From: Alexander Patrakov <patrakov@gmail.com>
Date: Fri, 12 Jul 2024 17:37:59 +0800
Message-ID: <CAN_LGv0tC7ef+0BV=m7i_9caO2g+B-SkqENT=w-=uif7ntsqjw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] backtrace_symbols() misuse by Ceph and its supposedly-safe use

Hi,

Given the recent discussions regarding the calls to
non-async-signal-safe functions from signal handlers, let me add my
two pesos to the discussion, even though I don't think there is
anything security-related in this email.

A few months ago, I handled a customer report about a deadlock in Ceph
RADOS Gateway. The Ceph version is 17.2.7. In that case, I attached
gdb to the deadlocked process and applied the backtrace to all
threads. One of the threads had this backtrace:

```
Thread 594 (Thread 0x7f41ac610700 (LWP 870073) "radosgw"):
#0  0x00007f43ca050d0e in __lll_lock_wait_private () from
target:/lib64/libc.so.6
#1  0x00007f43ca0568fa in malloc () from target:/lib64/libc.so.6
#2  0x00007f43ca0df884 in backtrace_symbols () from target:/lib64/libc.so.6
#3  0x00007f43cb24485a in handle_oneshot_fatal_signal(int) () from
target:/usr/lib64/libradosgw.so.2
#4  <signal handler called>
#5  0x00007f43ca003d2b in raise () from target:/lib64/libc.so.6
#6  0x00007f43ca0053e5 in abort () from target:/lib64/libc.so.6
#7  0x00007f43ca049c87 in __libc_message () from target:/lib64/libc.so.6
#8  0x00007f43ca051d2a in malloc_printerr () from target:/lib64/libc.so.6
#9  0x00007f43ca0525f6 in unlink_chunk.isra () from target:/lib64/libc.so.6
#10 0x00007f43ca0555c0 in _int_malloc () from target:/lib64/libc.so.6
#11 0x00007f43ca0567d8 in malloc () from target:/lib64/libc.so.6
#12 0x00007f43ca28e3fc in operator new(unsigned long) () from
target:/usr/lib64/libstdc++.so.6
#13 0x00007f43cae3b42f in std::map<rgw_obj, RGWObjState,
std::less<rgw_obj>, std::allocator<std::pair<rgw_obj const,
RGWObjState> > >::operator[](rgw_obj const&) () from
target:/usr/lib64/libradosgw.so.2
#14 0x00007f43caddb5a5 in RGWObjectCtx::set_atomic(rgw_obj const&) ()
from target:/usr/lib64/libradosgw.so.2
#15 0x00007f43caf189c0 in
rgw::sal::RadosObject::set_atomic(RGWObjectCtx*) const () from
target:/usr/lib64/libradosgw.so.2
#16 0x00007f43cad8319b in
RGWDeleteMultiObj::handle_individual_object(rgw_obj_key const&,
optional_yield,
boost::asio::basic_deadline_timer<boost::posix_time::ptime,
boost::asio::time_traits<boost::posix_time::ptime>,
boost::asio::executor>*) () from target:/usr/lib64/libradosgw.so.2
#17 0x00007f43cad83b99 in void
boost::context::detail::context_entry<boost::context::detail::record<boost::context::continuation,
boost::context::basic_fixedsize_stack<boost::context::stack_traits>,
spawn::detail::spawn_helper<boost::asio::executor_binder<void (*)(),
boost::asio::strand<boost::asio::io_context::basic_executor_type<std::allocator<void>,
0u> > >, RGWDeleteMultiObj::execute(optional_yield)::{lambda(spawn::basic_yield_context<boost::asio::executor_binder<void
(*)(), boost::asio::strand<boost::asio::io_context::basic_executor_type<std::allocator<void>,
0u> > > >)#3}, boost::context::basic_fixedsize_stack<boost::context::stack_traits>
>::operator()()::{lambda(boost::context::continuation&&)#1}>
>(boost::context::detail::transfer_t) () from
target:/usr/lib64/libradosgw.so.2
#18 0x00007f43cb293c1f in make_fcontext () from
target:/usr/lib64/libradosgw.so.2
```

Here is my attempt to make sense of it from the bottom up.

In frame #13, something was written into a C++ std::map; this has led
to a memory allocation via malloc() in frame #11. However, the
internal logic of the glibc implementation of malloc() detected some
corruption, and there was, indeed this message in the log:

Jun 21 04:52:35 abc-osd08 radosgw[868945]: corrupted size vs. prev_size
Jun 21 04:52:36 abc-osd08 radosgw[868945]: *** Caught signal (Aborted) **
Jun 21 04:52:36 abc-osd08 radosgw[868945]:  in thread 7f41ac610700
thread_name:radosgw

After printing this message, glibc tried to safely abort the process
to prevent further damage/exploitation, see frame #6.

Ceph daemons, however, have a signal handler that catches SIGABRT and
SIGSEGV and tries to format and log a backtrace. Their systemd units
are also set to automatically restart the daemons. Without the
handler, this is what would have happened. However, within the
handler, radosgw calls backtrace_symbols(), which, in turn, calls
malloc() in frame #1, which is not async-signal-safe. So, here is a
usage bug by definition, and it converted a restartable crash into a
classical A-A deadlock because the outer malloc() call from frame #11
already holds a lock.

In Ceph public bug tracker, there is also a similar report with MDS
instead of the RADOS gateway: https://tracker.ceph.com/issues/65039

The question here is whether this is only a Ceph bug or whether
backtrace_symbols() is an unusable piece of API a-la gets() because it
is calling malloc() and is documented to do so.

The same manual page documents backtrace_symbols_fd(), but, as-is, it
is not good enough because Ceph also wants to demangle C++ symbols, to
log the result, and to post the crash information into the designated
directory.

I acknowledge that there is a todo comment in src/global/signal_handler.cc:

  // TODO: don't use an ostringstream here. It could call malloc(), which we
  // don't want inside a signal handler.
  // Also fix the backtrace code not to allocate memory.
  ClibBackTrace bt(1);
  ostringstream oss;
  bt.print(oss);
  dout_emergency(oss.str());

Apparently, the authors don't realize that the use of ostringstream is
not the only cause of possible malloc() calls.

What would be a good solution (as in: something that does not convert
crashes into deadlocks) here? I understand that, after memory
corruption, we are already in the UB territory, but is there anything
better possible than what is implemented?

-- 
Alexander Patrakov
