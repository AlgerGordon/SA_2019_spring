function graphics_part_2(tVec,v_m_h_psi_1_psi_2_Mat,vVec_opt,mVec_opt,hVec_opt,psi_1_Vec_opt,psi_2_Vec_opt,uVec_opt)

    figure(2);
    clf;
    
    tab1 = uitab('Title','v(t)');
    ax1 = axes(tab1);
    cla(ax1,'reset');

    tab2 = uitab('Title','m(t)');
    ax2 = axes(tab2);
    cla(ax2,'reset');

    tab3 = uitab('Title','psi_1(t)');
    ax3 = axes(tab3);
    cla(ax3,'reset');
    
    tab4= uitab('Title','psi_2(t)');
    ax4 = axes(tab4);
    cla(ax4,'reset');
    
    tab5 = uitab('Title','u(t)');
    ax5 = axes(tab5);
    cla(ax5,'reset');
    
    tab6 = uitab('Title','h(t)');
    ax6 = axes(tab6);
    cla(ax6,'reset');
    
    numb_of_traj=round(size(v_m_h_psi_1_psi_2_Mat,2)/6);
    
    for k=0:(numb_of_traj-1)
        
        hold(ax1,'on');
        plot(ax1,tVec,v_m_h_psi_1_psi_2_Mat(:,1+6*k),'--b');
        hold(ax1,'off');
        
        hold(ax2,'on');
        plot(ax2,tVec,v_m_h_psi_1_psi_2_Mat(:,2+6*k),'--b');
        hold(ax2,'off');
        
        hold(ax3,'on');
        plot(ax3,tVec,v_m_h_psi_1_psi_2_Mat(:,4+6*k),'--b');
        hold(ax3,'off');
        
        hold(ax4,'on');
        plot(ax4,tVec,v_m_h_psi_1_psi_2_Mat(:,5+6*k),'--b');
        hold(ax4,'off');
        
        hold(ax5,'on');
        plot(ax5,tVec,v_m_h_psi_1_psi_2_Mat(:,6+6*k),'--b');
        hold(ax5,'off');
        
        hold(ax6,'on');
        plot(ax6,tVec,v_m_h_psi_1_psi_2_Mat(:,3+6*k),'--b');
        hold(ax6,'off');
        
        
    end
    
    
    hold(ax1,'on');
    plot(ax1,tVec,vVec_opt,'r');
    ylabel(ax1,'v(t)');
    xlabel(ax1,'time');
    hold(ax1,'off');   
    
    f_new = figure(3);
    ax_1_new = copyobj(ax1,f_new);
    set(ax_1_new,'Position','default');
    print(f_new,'my_pict\v_3_p2','-dpng');
    %print(f_new,'~/MSU/SA/Prac/LaTex/optCont2/pict\v_3_p2','-dpng');
    close(f_new);
    
    hold(ax2,'on');
    plot(ax2,tVec,mVec_opt,'r');
    ylabel(ax2,'m(t)');
    xlabel(ax2,'time');
    hold(ax2,'off');
    
    f_new = figure(3);
    ax_2_new = copyobj(ax2,f_new);
    set(ax_2_new,'Position','default');
    print(f_new,'my_pict\m_3_p2','-dpng');
    %print(f_new,'~/MSU/SA/Prac/LaTex/optCont2/pict\m_3_p2','-dpng');
    close(f_new);    
    
    hold(ax3,'on');
    plot(ax3,tVec,psi_1_Vec_opt,'r');
    ylabel(ax3,'psi_1');
    xlabel(ax3,'time');
    hold(ax3,'off');
    
    f_new = figure(3);
    ax_3_new = copyobj(ax3,f_new);
    set(ax_3_new,'Position','default');
    print(f_new,'my_pict\psi_1_3_p2','-dpng');
    %print(f_new,'~/MSU/SA/Prac/LaTex/optCont2/pict\psi_1_3_p2','-dpng');
    close(f_new);
    
    hold(ax4,'on');
    plot(ax4,tVec,psi_2_Vec_opt,'r');
    ylabel(ax4,'psi_2');
    xlabel(ax4,'time');
    hold(ax4,'off');
    
    f_new = figure(3);
    ax_4_new = copyobj(ax4,f_new);
    set(ax_4_new,'Position','default');
    print(f_new,'my_pict\psi_2_3_p2','-dpng');
    %print(f_new,'~/MSU/SA/Prac/LaTex/optCont2/pict\psi_2_3_p2','-dpng');
    close(f_new);
    
    hold(ax5,'on');
    plot(ax5,tVec,uVec_opt,'r');
    ylabel(ax5,'u(t)');
    xlabel(ax5,'time');
    hold(ax5,'off');
    
    f_new = figure(3);
    ax_5_new = copyobj(ax5,f_new);
    set(ax_5_new,'Position','default');
    print(f_new,'my_pict\u_3_p2','-dpng');
    %print(f_new,'~/MSU/SA/Prac/LaTex/optCont2/pict\u_3_p2','-dpng');
    close(f_new);
    
    hold(ax6,'on');
    plot(ax6,tVec,hVec_opt,'r');
    ylabel(ax6,'h(t)');
    xlabel(ax6,'time');
    hold(ax6,'off');
    
    
    f_new = figure(3);
    ax_6_new = copyobj(ax6,f_new);
    set(ax_6_new,'Position','default');
    print(f_new,'my_pict\h_3_p2','-dpng');
    %print(f_new,'~/MSU/SA/Prac/LaTex/optCont2/pict\h_3_p2','-dpng');
    close(f_new);
    
   
end