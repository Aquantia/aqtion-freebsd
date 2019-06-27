# $FreeBSD$

.PATH:  ./

KMOD=	if_atlantic
SRCS=	device_if.h bus_if.h pci_if.h ifdi_if.h
SRCS+=	opt_inet.h opt_inet6.h opt_rss.h
SRCS+=	aq_main.c aq_media.c aq_irq.c
SRCS+=	aq_ring.c aq_hw.c aq_hw_llh.c
SRCS+=	aq_fw.c aq_fw1x.c aq_fw2x.c aq_dbg.c

CFLAGS+= -DIFLIB -ferror-limit=1 -I/usr/include

.include <bsd.kmod.mk>
