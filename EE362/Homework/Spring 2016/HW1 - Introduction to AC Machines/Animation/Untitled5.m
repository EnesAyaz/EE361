% Part e

for i=1:41

fig=figure(i);

subplot(4,1,1)
stairs(mmfa(i,:),'b- ','Linewidth',1.5)
grid on;
set(gca,'FontSize',12);
ylabel('Phase A MMF','FontSize',8,'FontWeight','Bold');
set(gca,'xtick',[0:2:30]);
t= time_array(i);
t='t= '+ string(t);
ylim([-120 120 ]);
title(t,'FontSize',10,'FontWeight','Bold')

subplot(4,1,2)
stairs(mmfb(i,:),'b- ','Linewidth',1.5)
grid on;
set(gca,'FontSize',12);
ylabel('Phase B MMF','FontSize',8,'FontWeight','Bold');
set(gca,'xtick',[0:2:30]);
t= time_array(i);
t='t= '+ string(t);
ylim([-120 120 ])
title(t,'FontSize',10,'FontWeight','Bold')

subplot(4,1,3)
stairs(mmfc(i,:),'b- ','Linewidth',1.5)
grid on;
set(gca,'FontSize',12);
ylabel('Phase C MMF','FontSize',8,'FontWeight','Bold');
set(gca,'xtick',[0:2:30]);
t= time_array(i);
t='t= '+ string(t);
ylim([-120 120 ])
title(t,'FontSize',10,'FontWeight','Bold')

subplot(4,1,4)
stairs(mmftotal(i,:),'b- ','Linewidth',1.5)
grid on;
set(gca,'FontSize',12);
xlabel('Slot Number','FontSize',8,'FontWeight','Bold');
ylabel('Total MMF','FontSize',8,'FontWeight','Bold');
set(gca,'xtick',[0:2:30]);
t= time_array(i);
t='t= '+ string(t);
ylim([-200 200 ])
title(t,'FontSize',10,'FontWeight','Bold')

filename= string(i)+'.png';
saveas(fig,filename)
end
