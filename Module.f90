    module Define_Variables
    !�����洢��������ӳ������õ��ı����Լ�����
        implicit double precision(a-h,o-z)   
        !-------------------------------------------------------------------------------
        real::time_begin,time_end!���������������ʱ��ı���
        !-------------------------------------------------------------------------------
        integer::X_max,Y_max,Z_max,C_MAX,Num_Block!��¼�����ļ�����������������ڵ��������ֵ���Լ�������
        !-------------------------------------------------------------------------------
        allocatable::Area(:,:,:,:),quality(:,:,:,:),area_1(:,:,:,:)!������������ʱ�õ����������
        !-------------------------------------------------------------------------------
        allocatable :: num(:,:),number(:,:)
        !-------------------------------------------------------------------------------
        allocatable::Points_Position_initial(:,:,:,:,:)!������¼�����ж������ʼ������ڵ�
        allocatable::Wall_Points_Rotate(:,:,:,:,:)!������¼����߽���ת֮��Ľڵ�����
        allocatable::Wall_Points_Position(:,:,:,:,:)!������¼����߽��ʼ�Ľڵ�
        !-------------------------------------------------------------------------------
        allocatable::Edge_distance(:,:,:,:,:)!Geometry������ͳ������߳����������
        !-------------------------------------------------------------------------------
        allocatable::coefficient(:,:,:,:,:)!TFI�����Ц��ͦ²�����ֵ
        !-------------------------------------------------------------------------------
        allocatable::Wall_Points_Number(:,:)!������¼Wall�߽��ϵ��������,���ڽڵ���ת��ѭ����
        allocatable::BC_Temp(:),BC_Type(:,:)
        !-------------------------------------------------------------------------------
        allocatable::Points_Position_RBF(:,:)!RBF��ֵ
        allocatable::kpoint_RBF(:,:)
        !-------------------------------------------------------------------------------
        real::area_min=10.0
        real::area_max=0.0
        real::ave_quality_ini=0.0
        real::ave_quality_new=0.0
        real::sum=0
        real::Qe=90
        real::pi=acos(-1.0)
        real::maxquality=0.5
        !-------------------------------------------------------------------------------
        real::alpha!rotate_trans�еı���
        real::Alpha_Center!��ת���������½ǵĵ�ļн�
        !-------------------------------------------------------------------------------
        integer::Edge_Count!������¼�����ļ�������߽������
        !-------------------------------------------------------------------------------
        real::X_Min=10000
        real::Y_Min=10000
        !-------------------------------------------------------------------------------
        real::Read_Boundary_Condition_Time,Count_Max_Time,Cal_WallNumber_Time,Grid_Quality_Time
        !-------------------------------------------------------------------------------
    end module