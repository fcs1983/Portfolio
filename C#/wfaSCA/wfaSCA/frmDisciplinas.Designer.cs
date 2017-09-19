namespace wfaSCA
{
    partial class frmDisciplinas
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.Label dis_CodLabel;
            System.Windows.Forms.Label dis_NomLabel;
            System.Windows.Forms.Label dis_Crg_HorLabel;
            System.Windows.Forms.Label dis_Cur_CodLabel;
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmDisciplinas));
            this.scaDataSet = new wfaSCA.scaDataSet();
            this.disciplinaBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.disciplinaTableAdapter = new wfaSCA.scaDataSetTableAdapters.DisciplinaTableAdapter();
            this.tableAdapterManager = new wfaSCA.scaDataSetTableAdapters.TableAdapterManager();
            this.disciplinaBindingNavigator = new System.Windows.Forms.BindingNavigator(this.components);
            this.bindingNavigatorAddNewItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorCountItem = new System.Windows.Forms.ToolStripLabel();
            this.bindingNavigatorDeleteItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMoveFirstItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMovePreviousItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorPositionItem = new System.Windows.Forms.ToolStripTextBox();
            this.bindingNavigatorSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorMoveNextItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMoveLastItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.disciplinaBindingNavigatorSaveItem = new System.Windows.Forms.ToolStripButton();
            this.dis_CodTextBox = new System.Windows.Forms.TextBox();
            this.dis_NomTextBox = new System.Windows.Forms.TextBox();
            this.dis_Crg_HorTextBox = new System.Windows.Forms.TextBox();
            this.dis_Cur_CodTextBox = new System.Windows.Forms.TextBox();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.disCodDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.disNomDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.disCrgHorDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.disCurCodDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.epDisciplinas = new System.Windows.Forms.ErrorProvider(this.components);
            this.fillByToolStrip = new System.Windows.Forms.ToolStrip();
            this.dis_CodToolStripLabel = new System.Windows.Forms.ToolStripLabel();
            this.dis_CodToolStripTextBox = new System.Windows.Forms.ToolStripTextBox();
            this.dis_NomToolStripLabel = new System.Windows.Forms.ToolStripLabel();
            this.dis_NomToolStripTextBox = new System.Windows.Forms.ToolStripTextBox();
            this.dis_Cur_CodToolStripLabel = new System.Windows.Forms.ToolStripLabel();
            this.dis_Cur_CodToolStripTextBox = new System.Windows.Forms.ToolStripTextBox();
            this.fillByToolStripButton = new System.Windows.Forms.ToolStripButton();
            this.fileSystemWatcher1 = new System.IO.FileSystemWatcher();
            dis_CodLabel = new System.Windows.Forms.Label();
            dis_NomLabel = new System.Windows.Forms.Label();
            dis_Crg_HorLabel = new System.Windows.Forms.Label();
            dis_Cur_CodLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.scaDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.disciplinaBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.disciplinaBindingNavigator)).BeginInit();
            this.disciplinaBindingNavigator.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.epDisciplinas)).BeginInit();
            this.fillByToolStrip.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.fileSystemWatcher1)).BeginInit();
            this.SuspendLayout();
            // 
            // dis_CodLabel
            // 
            dis_CodLabel.AutoSize = true;
            dis_CodLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dis_CodLabel.Location = new System.Drawing.Point(33, 61);
            dis_CodLabel.Name = "dis_CodLabel";
            dis_CodLabel.Size = new System.Drawing.Size(60, 18);
            dis_CodLabel.TabIndex = 1;
            dis_CodLabel.Text = "Código:";
            // 
            // dis_NomLabel
            // 
            dis_NomLabel.AutoSize = true;
            dis_NomLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dis_NomLabel.Location = new System.Drawing.Point(33, 87);
            dis_NomLabel.Name = "dis_NomLabel";
            dis_NomLabel.Size = new System.Drawing.Size(53, 18);
            dis_NomLabel.TabIndex = 3;
            dis_NomLabel.Text = "Nome:";
            // 
            // dis_Crg_HorLabel
            // 
            dis_Crg_HorLabel.AutoSize = true;
            dis_Crg_HorLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dis_Crg_HorLabel.Location = new System.Drawing.Point(33, 113);
            dis_Crg_HorLabel.Name = "dis_Crg_HorLabel";
            dis_Crg_HorLabel.Size = new System.Drawing.Size(105, 18);
            dis_Crg_HorLabel.TabIndex = 5;
            dis_Crg_HorLabel.Text = "Carga Horária:";
            // 
            // dis_Cur_CodLabel
            // 
            dis_Cur_CodLabel.AutoSize = true;
            dis_Cur_CodLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dis_Cur_CodLabel.Location = new System.Drawing.Point(33, 139);
            dis_Cur_CodLabel.Name = "dis_Cur_CodLabel";
            dis_Cur_CodLabel.Size = new System.Drawing.Size(107, 18);
            dis_Cur_CodLabel.TabIndex = 7;
            dis_Cur_CodLabel.Text = "Sigla do curso:";
            // 
            // scaDataSet
            // 
            this.scaDataSet.DataSetName = "scaDataSet";
            this.scaDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // disciplinaBindingSource
            // 
            this.disciplinaBindingSource.DataMember = "Disciplina";
            this.disciplinaBindingSource.DataSource = this.scaDataSet;
            // 
            // disciplinaTableAdapter
            // 
            this.disciplinaTableAdapter.ClearBeforeFill = true;
            // 
            // tableAdapterManager
            // 
            this.tableAdapterManager.AlunoTableAdapter = null;
            this.tableAdapterManager.BackupDataSetBeforeUpdate = false;
            this.tableAdapterManager.CursoTableAdapter = null;
            this.tableAdapterManager.DepartamentoTableAdapter = null;
            this.tableAdapterManager.DisciplinaTableAdapter = this.disciplinaTableAdapter;
            this.tableAdapterManager.EstadoTableAdapter = null;
            this.tableAdapterManager.MatriculaTableAdapter = null;
            this.tableAdapterManager.UpdateOrder = wfaSCA.scaDataSetTableAdapters.TableAdapterManager.UpdateOrderOption.InsertUpdateDelete;
            // 
            // disciplinaBindingNavigator
            // 
            this.disciplinaBindingNavigator.AddNewItem = this.bindingNavigatorAddNewItem;
            this.disciplinaBindingNavigator.BindingSource = this.disciplinaBindingSource;
            this.disciplinaBindingNavigator.CountItem = this.bindingNavigatorCountItem;
            this.disciplinaBindingNavigator.DeleteItem = this.bindingNavigatorDeleteItem;
            this.disciplinaBindingNavigator.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.bindingNavigatorMoveFirstItem,
            this.bindingNavigatorMovePreviousItem,
            this.bindingNavigatorSeparator,
            this.bindingNavigatorPositionItem,
            this.bindingNavigatorCountItem,
            this.bindingNavigatorSeparator1,
            this.bindingNavigatorMoveNextItem,
            this.bindingNavigatorMoveLastItem,
            this.bindingNavigatorSeparator2,
            this.bindingNavigatorAddNewItem,
            this.bindingNavigatorDeleteItem,
            this.disciplinaBindingNavigatorSaveItem});
            this.disciplinaBindingNavigator.Location = new System.Drawing.Point(0, 0);
            this.disciplinaBindingNavigator.MoveFirstItem = this.bindingNavigatorMoveFirstItem;
            this.disciplinaBindingNavigator.MoveLastItem = this.bindingNavigatorMoveLastItem;
            this.disciplinaBindingNavigator.MoveNextItem = this.bindingNavigatorMoveNextItem;
            this.disciplinaBindingNavigator.MovePreviousItem = this.bindingNavigatorMovePreviousItem;
            this.disciplinaBindingNavigator.Name = "disciplinaBindingNavigator";
            this.disciplinaBindingNavigator.PositionItem = this.bindingNavigatorPositionItem;
            this.disciplinaBindingNavigator.Size = new System.Drawing.Size(535, 25);
            this.disciplinaBindingNavigator.TabIndex = 0;
            this.disciplinaBindingNavigator.Text = "bindingNavigator1";
            // 
            // bindingNavigatorAddNewItem
            // 
            this.bindingNavigatorAddNewItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorAddNewItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorAddNewItem.Image")));
            this.bindingNavigatorAddNewItem.Name = "bindingNavigatorAddNewItem";
            this.bindingNavigatorAddNewItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorAddNewItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorAddNewItem.Text = "Add new";
            // 
            // bindingNavigatorCountItem
            // 
            this.bindingNavigatorCountItem.Name = "bindingNavigatorCountItem";
            this.bindingNavigatorCountItem.Size = new System.Drawing.Size(35, 22);
            this.bindingNavigatorCountItem.Text = "of {0}";
            this.bindingNavigatorCountItem.ToolTipText = "Total number of items";
            // 
            // bindingNavigatorDeleteItem
            // 
            this.bindingNavigatorDeleteItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorDeleteItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorDeleteItem.Image")));
            this.bindingNavigatorDeleteItem.Name = "bindingNavigatorDeleteItem";
            this.bindingNavigatorDeleteItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorDeleteItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorDeleteItem.Text = "Delete";
            // 
            // bindingNavigatorMoveFirstItem
            // 
            this.bindingNavigatorMoveFirstItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveFirstItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveFirstItem.Image")));
            this.bindingNavigatorMoveFirstItem.Name = "bindingNavigatorMoveFirstItem";
            this.bindingNavigatorMoveFirstItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveFirstItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveFirstItem.Text = "Move first";
            // 
            // bindingNavigatorMovePreviousItem
            // 
            this.bindingNavigatorMovePreviousItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMovePreviousItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMovePreviousItem.Image")));
            this.bindingNavigatorMovePreviousItem.Name = "bindingNavigatorMovePreviousItem";
            this.bindingNavigatorMovePreviousItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMovePreviousItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMovePreviousItem.Text = "Move previous";
            // 
            // bindingNavigatorSeparator
            // 
            this.bindingNavigatorSeparator.Name = "bindingNavigatorSeparator";
            this.bindingNavigatorSeparator.Size = new System.Drawing.Size(6, 25);
            // 
            // bindingNavigatorPositionItem
            // 
            this.bindingNavigatorPositionItem.AccessibleName = "Position";
            this.bindingNavigatorPositionItem.AutoSize = false;
            this.bindingNavigatorPositionItem.Name = "bindingNavigatorPositionItem";
            this.bindingNavigatorPositionItem.Size = new System.Drawing.Size(50, 23);
            this.bindingNavigatorPositionItem.Text = "0";
            this.bindingNavigatorPositionItem.ToolTipText = "Current position";
            // 
            // bindingNavigatorSeparator1
            // 
            this.bindingNavigatorSeparator1.Name = "bindingNavigatorSeparator1";
            this.bindingNavigatorSeparator1.Size = new System.Drawing.Size(6, 25);
            // 
            // bindingNavigatorMoveNextItem
            // 
            this.bindingNavigatorMoveNextItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveNextItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveNextItem.Image")));
            this.bindingNavigatorMoveNextItem.Name = "bindingNavigatorMoveNextItem";
            this.bindingNavigatorMoveNextItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveNextItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveNextItem.Text = "Move next";
            // 
            // bindingNavigatorMoveLastItem
            // 
            this.bindingNavigatorMoveLastItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveLastItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveLastItem.Image")));
            this.bindingNavigatorMoveLastItem.Name = "bindingNavigatorMoveLastItem";
            this.bindingNavigatorMoveLastItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveLastItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveLastItem.Text = "Move last";
            // 
            // bindingNavigatorSeparator2
            // 
            this.bindingNavigatorSeparator2.Name = "bindingNavigatorSeparator2";
            this.bindingNavigatorSeparator2.Size = new System.Drawing.Size(6, 25);
            // 
            // disciplinaBindingNavigatorSaveItem
            // 
            this.disciplinaBindingNavigatorSaveItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.disciplinaBindingNavigatorSaveItem.Image = ((System.Drawing.Image)(resources.GetObject("disciplinaBindingNavigatorSaveItem.Image")));
            this.disciplinaBindingNavigatorSaveItem.Name = "disciplinaBindingNavigatorSaveItem";
            this.disciplinaBindingNavigatorSaveItem.Size = new System.Drawing.Size(23, 22);
            this.disciplinaBindingNavigatorSaveItem.Text = "Save Data";
            this.disciplinaBindingNavigatorSaveItem.Click += new System.EventHandler(this.disciplinaBindingNavigatorSaveItem_Click);
            // 
            // dis_CodTextBox
            // 
            this.dis_CodTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.disciplinaBindingSource, "Dis_Cod", true));
            this.dis_CodTextBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dis_CodTextBox.Location = new System.Drawing.Point(168, 58);
            this.dis_CodTextBox.Name = "dis_CodTextBox";
            this.dis_CodTextBox.Size = new System.Drawing.Size(100, 24);
            this.dis_CodTextBox.TabIndex = 2;
            this.dis_CodTextBox.Validating += new System.ComponentModel.CancelEventHandler(this.dis_CodTextBox_Validating);
            // 
            // dis_NomTextBox
            // 
            this.dis_NomTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.disciplinaBindingSource, "Dis_Nom", true));
            this.dis_NomTextBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dis_NomTextBox.Location = new System.Drawing.Point(168, 84);
            this.dis_NomTextBox.Name = "dis_NomTextBox";
            this.dis_NomTextBox.Size = new System.Drawing.Size(303, 24);
            this.dis_NomTextBox.TabIndex = 4;
            this.dis_NomTextBox.Validating += new System.ComponentModel.CancelEventHandler(this.dis_NomTextBox_Validating);
            // 
            // dis_Crg_HorTextBox
            // 
            this.dis_Crg_HorTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.disciplinaBindingSource, "Dis_Crg_Hor", true));
            this.dis_Crg_HorTextBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dis_Crg_HorTextBox.Location = new System.Drawing.Point(168, 110);
            this.dis_Crg_HorTextBox.Name = "dis_Crg_HorTextBox";
            this.dis_Crg_HorTextBox.Size = new System.Drawing.Size(100, 24);
            this.dis_Crg_HorTextBox.TabIndex = 6;
            this.dis_Crg_HorTextBox.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.dis_Crg_HorTextBox_KeyPress);
            this.dis_Crg_HorTextBox.Validating += new System.ComponentModel.CancelEventHandler(this.dis_Crg_HorTextBox_Validating);
            // 
            // dis_Cur_CodTextBox
            // 
            this.dis_Cur_CodTextBox.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.dis_Cur_CodTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.disciplinaBindingSource, "Dis_Cur_Cod", true));
            this.dis_Cur_CodTextBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dis_Cur_CodTextBox.Location = new System.Drawing.Point(168, 136);
            this.dis_Cur_CodTextBox.Name = "dis_Cur_CodTextBox";
            this.dis_Cur_CodTextBox.Size = new System.Drawing.Size(100, 24);
            this.dis_Cur_CodTextBox.TabIndex = 8;
            this.dis_Cur_CodTextBox.Validating += new System.ComponentModel.CancelEventHandler(this.dis_Cur_CodTextBox_Validating);
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.disCodDataGridViewTextBoxColumn,
            this.disNomDataGridViewTextBoxColumn,
            this.disCrgHorDataGridViewTextBoxColumn,
            this.disCurCodDataGridViewTextBoxColumn});
            this.dataGridView1.DataSource = this.disciplinaBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(12, 166);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(511, 139);
            this.dataGridView1.TabIndex = 9;
            // 
            // disCodDataGridViewTextBoxColumn
            // 
            this.disCodDataGridViewTextBoxColumn.DataPropertyName = "Dis_Cod";
            this.disCodDataGridViewTextBoxColumn.HeaderText = "Código";
            this.disCodDataGridViewTextBoxColumn.Name = "disCodDataGridViewTextBoxColumn";
            // 
            // disNomDataGridViewTextBoxColumn
            // 
            this.disNomDataGridViewTextBoxColumn.DataPropertyName = "Dis_Nom";
            this.disNomDataGridViewTextBoxColumn.HeaderText = "Nome";
            this.disNomDataGridViewTextBoxColumn.Name = "disNomDataGridViewTextBoxColumn";
            // 
            // disCrgHorDataGridViewTextBoxColumn
            // 
            this.disCrgHorDataGridViewTextBoxColumn.DataPropertyName = "Dis_Crg_Hor";
            this.disCrgHorDataGridViewTextBoxColumn.HeaderText = "Carga Horária";
            this.disCrgHorDataGridViewTextBoxColumn.Name = "disCrgHorDataGridViewTextBoxColumn";
            // 
            // disCurCodDataGridViewTextBoxColumn
            // 
            this.disCurCodDataGridViewTextBoxColumn.DataPropertyName = "Dis_Cur_Cod";
            this.disCurCodDataGridViewTextBoxColumn.HeaderText = "Sigla do curso";
            this.disCurCodDataGridViewTextBoxColumn.Name = "disCurCodDataGridViewTextBoxColumn";
            // 
            // epDisciplinas
            // 
            this.epDisciplinas.ContainerControl = this;
            // 
            // fillByToolStrip
            // 
            this.fillByToolStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.dis_CodToolStripLabel,
            this.dis_CodToolStripTextBox,
            this.dis_NomToolStripLabel,
            this.dis_NomToolStripTextBox,
            this.dis_Cur_CodToolStripLabel,
            this.dis_Cur_CodToolStripTextBox,
            this.fillByToolStripButton});
            this.fillByToolStrip.Location = new System.Drawing.Point(0, 25);
            this.fillByToolStrip.Name = "fillByToolStrip";
            this.fillByToolStrip.Size = new System.Drawing.Size(535, 25);
            this.fillByToolStrip.TabIndex = 10;
            this.fillByToolStrip.Text = "fillByToolStrip";
            // 
            // dis_CodToolStripLabel
            // 
            this.dis_CodToolStripLabel.Name = "dis_CodToolStripLabel";
            this.dis_CodToolStripLabel.Size = new System.Drawing.Size(49, 22);
            this.dis_CodToolStripLabel.Text = "Código:";
            // 
            // dis_CodToolStripTextBox
            // 
            this.dis_CodToolStripTextBox.Name = "dis_CodToolStripTextBox";
            this.dis_CodToolStripTextBox.Size = new System.Drawing.Size(100, 25);
            // 
            // dis_NomToolStripLabel
            // 
            this.dis_NomToolStripLabel.Name = "dis_NomToolStripLabel";
            this.dis_NomToolStripLabel.Size = new System.Drawing.Size(43, 22);
            this.dis_NomToolStripLabel.Text = "Nome:";
            // 
            // dis_NomToolStripTextBox
            // 
            this.dis_NomToolStripTextBox.Name = "dis_NomToolStripTextBox";
            this.dis_NomToolStripTextBox.Size = new System.Drawing.Size(100, 25);
            // 
            // dis_Cur_CodToolStripLabel
            // 
            this.dis_Cur_CodToolStripLabel.Name = "dis_Cur_CodToolStripLabel";
            this.dis_Cur_CodToolStripLabel.Size = new System.Drawing.Size(35, 22);
            this.dis_Cur_CodToolStripLabel.Text = "Sigla:";
            // 
            // dis_Cur_CodToolStripTextBox
            // 
            this.dis_Cur_CodToolStripTextBox.Name = "dis_Cur_CodToolStripTextBox";
            this.dis_Cur_CodToolStripTextBox.Size = new System.Drawing.Size(100, 25);
            // 
            // fillByToolStripButton
            // 
            this.fillByToolStripButton.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text;
            this.fillByToolStripButton.Name = "fillByToolStripButton";
            this.fillByToolStripButton.Size = new System.Drawing.Size(61, 22);
            this.fillByToolStripButton.Text = "Pesquisar";
            this.fillByToolStripButton.Click += new System.EventHandler(this.fillByToolStripButton_Click);
            // 
            // fileSystemWatcher1
            // 
            this.fileSystemWatcher1.EnableRaisingEvents = true;
            this.fileSystemWatcher1.SynchronizingObject = this;
            // 
            // frmDisciplinas
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(535, 325);
            this.Controls.Add(this.fillByToolStrip);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(dis_CodLabel);
            this.Controls.Add(this.dis_CodTextBox);
            this.Controls.Add(dis_NomLabel);
            this.Controls.Add(this.dis_NomTextBox);
            this.Controls.Add(dis_Crg_HorLabel);
            this.Controls.Add(this.dis_Crg_HorTextBox);
            this.Controls.Add(dis_Cur_CodLabel);
            this.Controls.Add(this.dis_Cur_CodTextBox);
            this.Controls.Add(this.disciplinaBindingNavigator);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "frmDisciplinas";
            this.Text = "DISCIPLINAS";
            this.Load += new System.EventHandler(this.frmDisciplinas_Load);
            ((System.ComponentModel.ISupportInitialize)(this.scaDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.disciplinaBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.disciplinaBindingNavigator)).EndInit();
            this.disciplinaBindingNavigator.ResumeLayout(false);
            this.disciplinaBindingNavigator.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.epDisciplinas)).EndInit();
            this.fillByToolStrip.ResumeLayout(false);
            this.fillByToolStrip.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.fileSystemWatcher1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private scaDataSet scaDataSet;
        private System.Windows.Forms.BindingSource disciplinaBindingSource;
        private scaDataSetTableAdapters.DisciplinaTableAdapter disciplinaTableAdapter;
        private scaDataSetTableAdapters.TableAdapterManager tableAdapterManager;
        private System.Windows.Forms.BindingNavigator disciplinaBindingNavigator;
        private System.Windows.Forms.ToolStripButton bindingNavigatorAddNewItem;
        private System.Windows.Forms.ToolStripLabel bindingNavigatorCountItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorDeleteItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveFirstItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMovePreviousItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator;
        private System.Windows.Forms.ToolStripTextBox bindingNavigatorPositionItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator1;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveNextItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveLastItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator2;
        private System.Windows.Forms.ToolStripButton disciplinaBindingNavigatorSaveItem;
        private System.Windows.Forms.TextBox dis_CodTextBox;
        private System.Windows.Forms.TextBox dis_NomTextBox;
        private System.Windows.Forms.TextBox dis_Crg_HorTextBox;
        private System.Windows.Forms.TextBox dis_Cur_CodTextBox;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataGridViewTextBoxColumn disCodDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn disNomDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn disCrgHorDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn disCurCodDataGridViewTextBoxColumn;
        private System.Windows.Forms.ErrorProvider epDisciplinas;
        private System.Windows.Forms.ToolStrip fillByToolStrip;
        private System.Windows.Forms.ToolStripLabel dis_CodToolStripLabel;
        private System.Windows.Forms.ToolStripTextBox dis_CodToolStripTextBox;
        private System.Windows.Forms.ToolStripLabel dis_NomToolStripLabel;
        private System.Windows.Forms.ToolStripTextBox dis_NomToolStripTextBox;
        private System.Windows.Forms.ToolStripLabel dis_Cur_CodToolStripLabel;
        private System.Windows.Forms.ToolStripTextBox dis_Cur_CodToolStripTextBox;
        private System.Windows.Forms.ToolStripButton fillByToolStripButton;
        private System.IO.FileSystemWatcher fileSystemWatcher1;
    }
}